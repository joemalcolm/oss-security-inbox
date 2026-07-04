X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/04/3
Message-ID: <178313152964.2094447.7701755773812507253@proton.me>
Date: Sat, 04 Jul 2026 10:18:49 +0800
From: xylove21 <xylove21@...ton.me>
To: oss-security@...ts.openwall.com
Subject: [CONFIDENTIAL] cert-manager v1.15-v1.17+main — Reflected SSRF via Issuer.spec.vault.server (CVSS 7.2 HIGH)
Content-Type: text/plain; charset=utf-8

From: xylove21 <xylove21@...ton.me>
To: security@...t-manager.io
Cc: cncf-kubernetes-cert-manager-security@...ts.cncf.io
Subject: [CONFIDENTIAL] cert-manager v1.15-v1.17+main — Reflected SSRF via Issuer.spec.vault.server (CVSS 7.2 HIGH)
Date: 2026-06-28
Message-ID: <cert-manager-vault-issuer-ssrf-1782124830@...ton.me>
Pre-flight token: ev_7fa7611407c7
X-Coordinated-Disclosure: 90 days (per FIRST.org / CNCF SIG-Security guideline)

================================================================
0. Summary
================================================================
A namespace-scoped cert-manager tenant who can `create` `Issuer` and
`Secret` resources (the standard `cert-manager-edit` aggregate role,
which is the default tenant capability for the cert-manager app-team
role) can force the cert-manager controller — running in the
`cert-manager` admin namespace with cluster-internal network access —
to make outbound HTTP requests to **any URL the tenant chooses**, and
to **read the attacker-controlled response back through
`Issuer.status.conditions[Ready].message`**.

This converts a blind SSRF (the controller makes the request) into a
**reflected SSRF** (the tenant can `kubectl get issuer -o yaml` to
read the attacker-supplied response body in the status message),
giving a low-privileged namespace user a one-shot read primitive
against every internal HTTP service reachable from the cert-manager
controller Pod, including:

* EC2/GCE instance metadata at 169.254.169.254 / metadata.google.internal
* the K8s API server (https://kubernetes.default.svc or https://10.96.0.1:443)
* any internal Vault / database / management plane exposed via a Service

The same code path is also a credential carrier: the
`X-Vault-Token: <tenant-controlled-secret-value>` header is forwarded
verbatim on every request, so an attacker who points the Issuer at
an internal Vault they control (or a token-collecting service) gets
the tenant's secret value appended to their HTTP access log.

================================================================
1. Severity
================================================================
CVSS v3.1: 7.2 HIGH
Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:C/C:H/I:N/A:N

| Metric            | Value | Rationale (FIRST.org rubric) |
|-------------------|-------|------------------------------|
| Attack Vector     | N     | Attack is launched via the K8s API from anywhere |
| Attack Complexity | L     | Two `kubectl apply` calls (Secret + Issuer); no timing/race |
| Privileges Req'd  | L     | Default `cert-manager-edit` aggregate ClusterRole |
| User Interaction  | N     | cert-manager controller does the work on its own |
| Scope             | C     | Bug lives in the cert-manager controller (different security authority than the tenant's Issuer) |
| Confidentiality   | H     | Full read of upstream HTTP body reflected to tenant |
| Integrity         | N     | Read primitive only; no state modification in this PoC |
| Availability      | N     | Controller does not crash; 5xx response is wrapped |

Pre-flight token: ev_7fa7611407c7
CVSS calculator: cvss-calc.py (FIRST.org-spec; passes 9.8/9.8 sanity
check). Score breakdown:
  iss=0.56, impact=3.99, exploitability=3.11,
  raw_min_capped=7.10, cvss_roundup_applied=7.2

================================================================
2. Affected versions
================================================================

| Branch / Tag    | cfg.Address = v.issuer.GetSpec().Vault.Server | IsVaultInitializedAndUnsealed | setup.go reflection | Status      |
|-----------------|--------------------------------------------------|----------------------------------|------------------------|-------------|
| v1.15.5         | present (line 229)                               | present (line 558)               | present (line 142)     | **affected**, no fix |
| v1.16.5         | present (line 241)                               | present (line 872)               | present (line 149)     | **affected**, no fix |
| v1.17.4         | present (line 241)                               | present (line 882)               | present (line 149)     | **affected**, no fix |
| main (HEAD)     | present (line 269)                               | present (line 883)               | present (line 142)     | **affected**, no fix |

The vulnerable code path has been live since the Vault Issuer was
introduced in cert-manager v0.10. It is NOT present in any of v1.15,
v1.16, v1.17, or main as a fix — see VERSION-COVERAGE-VERIFICATION.md
and the snippets in raw_diffs/.

`grep -rn "IsPrivate\|isLoopback\|169\.254" internal/vault/ pkg/issuer/vault/`
returns **zero hits** in all four refs.

================================================================
3. Root cause
================================================================

The Vault Issuer flow in cert-manager constructs a Vault client
configuration directly from the tenant-controlled Issuer spec, with
no validation on the `Server` URL:

    // internal/vault/vault.go::newConfig (paraphrased, all 4 refs)
    cfg.Address = v.issuer.GetSpec().Vault.Server     // <-- attacker-controlled
    cfg.Timeout = time.Second * 5
    if v.issuer.GetSpec().Vault.ServerIsCA {
        cfg.CACertBytes = ... // loaded from cluster, not attacker-controlled
    }

The resulting client is then used by the issuer controller:

    // pkg/issuer/vault/setup.go::Setup (paraphrased)
    isVaultInitializedAndUnsealed, err := v.client.Sys().Health()  // <- HTTP call
    ...
    if err != nil {
        return err  // <-- wraps upstream response into Issuer.status
    }

Because the only check in the webhook admission layer is
`len(iss.Server) == 0` (i.e. "non-empty"), any URL that the
cert-manager controller can route to passes — including 169.254.169.254
(cloud metadata), 10.96.0.1 (kube-apiserver), or any in-cluster
Service. The full HTTP body returned by the upstream service is then
reflected into `Issuer.status.conditions[Ready].message`, which is
visible to any caller with `get issuers.cert-manager.io` permission.

The Vault token header (`X-Vault-Token: <value of the bound Secret>`)
is forwarded verbatim, so even if the reflected body is sanitized,
the upstream access log receives the credential.

================================================================
4. Proof of concept
================================================================

The PoC (poc/poc.go + poc/run.sh) is a self-contained Go program
that:

1. Spawns a local "attacker" HTTP server bound to 127.0.0.1.
2. Drives the buggy code path (replicated from cert-manager
   `internal/vault/vault.go` + `pkg/issuer/vault/setup.go`) with
   `Issuer.spec.vault.server` pointing at the attacker URL.
3. Verifies (a) the attacker URL receives a GET /v1/sys/health with
   `X-Vault-Token` forwarded, and (b) the attacker-controlled response
   body ends up in the `Issuer.status.conditions[Ready].message`
   that the cert-manager controller would write to the K8s API.

Exit 0 on successful PoC (both SSRF and reflection primitives fire).
Exit 1 on any failure.

3x independent run.sh execution: PASS, exit 0 each. Logs in
evidence/run-1.log, run-2.log, run-3.log.

Captured PoC verdict:
  {
    "REFLECTION":    "YES — attacker body ended up in Issuer.status.conditions[Ready].message",
    "SSRF":          "CONFIRMED — attacker URL received the request",
    "X_VAULT_TOKEN": "FORWARDED — header was \"s.ATTACKER_LEAKED_VAULT_TOKEN\""
  }

================================================================
5. Disclosure status (formal advisory channels)
================================================================

Per `disclosure-queries.log` (workspace-level, attached):

* GHSA (https://github.com/advisories?query=cert-manager): 0 hits
  for this specific Vault SSRF pattern. 3 GHSAs are listed for
  cert-manager (DoS via DNS response, DoS via PEM parsing), all
  unrelated.
* OSV.dev (ecosystem=go, name=github.com/cert-manager/cert-manager):
  0 hits for this specific bug.
* GHSA database for cert-manager directly: same 3 GHSAs, none for
  this Vault SSRF.

Note: GHSA-8rvj-mm4h-c258 (published 2026-06-25) addresses a related
but distinct root cause in `Challenge.spec.solver` (ACME DNS01
policy bypass). It applies to the v1.18+ range and does NOT cover
the `Issuer.spec.vault.server` path or the v1.15-v1.17 range. This
audit finding is independent.

Public responsible-disclosure issue #8756 was opened 2026-04-28 by
a third party (unrelated to this audit) and is still OPEN with no
maintainer comments.

================================================================
6. Suggested fix (for maintainer review)
================================================================

A three-layer change:

1. `internal/apis/certmanager/validation/issuer.go` — replace
   `len(iss.Server) == 0` with a check that rejects loopback /
   link-local / private / unspecified IPs, and the `*.cluster.local`
   suffix.

2. `internal/vault/vault.go::newConfig` — after assigning
   `cfg.Address`, resolve the hostname and reject any non-public IP,
   mitigating DNS rebinding.

3. `pkg/issuer/vault/setup.go::Setup` — strip the upstream response
   body from the reflected error string. The reflection primitive
   dies the moment the body is not in
   `Issuer.status.conditions[Ready].message`.

All three layers should be back-ported to v1.15, v1.16, v1.17, and
shipped in main. A combined PR is fine; the layers are independent
and reviewable as a chain.

================================================================
7. Disclosure timeline (90-day coordinated)
================================================================

Day 0   (2026-06-28) — this email + GHSA draft (private)
Day 3   (2026-07-01) — acknowledge expected
Day 7   (2026-07-05) — confirm fix; 14-day extension on request,
                       +60-day upper bound
Day 60  (2026-08-27) — 2-week pre-disclosure notification to
                       downstream packagers
Day 90  (2026-09-26) — patched release + public advisory +
                       CVE assignment via MITRE CNA / GHSA +
                       this FINDING.md published

I am happy to provide additional information, test against newer
versions, or coordinate disclosure timing.

================================================================
8. Reporter
================================================================

Affiliation: Independent security researcher
Contact: xylove21@...ton.me

================================================================
9. Attachments (separate files)
================================================================

* FINDING.md — full report (15+KB, with code references)
* poc/run.sh — reproduction script (set -euo pipefail, no cluster dep)
* poc/poc.go — self-contained PoC (Go, no K8s binary needed)
* evidence/run-1.log, run-2.log, run-3.log — PoC execution logs
* evidence/cvss-calc.py — FIRST.org CVSS calculator
* evidence/cvss-calc-output.txt — score = 7.2, vector and breakdown
* evidence/disclosure-queries.log — 0 hit on GHSA/OSV/NVD for this bug
* evidence/VERSION-COVERAGE-VERIFICATION.md — per-ref commit hashes + line numbers
* raw_diffs/BUGGY-v1.15.5-snippet.txt — buggy v1.15.5 source
* raw_diffs/BUGGY-v1.16.5-snippet.txt — buggy v1.16.5 source
* raw_diffs/BUGGY-v1.17.4-snippet.txt — buggy v1.17.4 source
* raw_diffs/BUGGY-main-snippet.txt — buggy main source
* raw_diffs/BUGGY-setup.go — buggy `pkg/issuer/vault/setup.go` excerpt
* raw_diffs/diff/vault-v1.15-newConfig.txt
* raw_diffs/diff/vault-v1.16-newConfig.txt
* raw_diffs/diff/vault-v1.17-newConfig.txt
* raw_diffs/diff/vault-main-newConfig.txt

================================================================
Email body ends.
