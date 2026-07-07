X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/07/11
Message-ID: <CAOOfO7epbyLMrEN8rLXxd=Y7UjFeCDJyRMS6ap6CQbuHX-TQ5A@mail.gmail.com>
Date: Tue, 7 Jul 2026 21:07:11 +0530
From: Feroz Salam <feroz.salam@...valent.com>
To: xylove21 <xylove21@...ton.me>, oss-security@...ts.openwall.com
Cc: security@...ium.io
Subject: Re: [CVE request] Cilium ClusterNetworkPolicy matchExpressions Values silently dropped — 0-day in v1.20.0-pre releases, no maintainer response in 9 days via GHSA Triage
Content-Type: text/plain; charset=utf-8

Hello,

As noted in your report, the issue you have reported only affects
development snapshots of Cilium, and no released stable versions. We do not
expect these development snapshots to be used in production environments,
and do not see the benefit of CVE issuance in this case.

Regarding the lack of response from the Cilium project, we responded to
your GitHub security advisory submission on 30 June to inform you that we
were triaging your report. Your initial report mentions that you are
"willing to wait up to 90 days from this report" before disclosure, but
filing this issue publicly contradicts your stated timeline.

Feroz Salam
Cilium Security Team

On Tue, 7 Jul 2026 at 18:26, 'xylove21' via Cilium Security Response Team <
cilium-security@...valent.com> wrote:

> From: xylove21 <xuy0515@...il.com>
> To: oss-security@...ts.openwall.com
> Cc: security@...ium.io
> Subject: [CVE request] Cilium ClusterNetworkPolicy matchExpressions Values
> silently dropped — 0-day in v1.20.0-pre releases, no maintainer response in
> 9 days via GHSA Triage
>
> Hi oss-security,
>
> Filing this publicly because the Cilium project's GitHub Security Advisory
> has been in Triage state for 9 days with no maintainer engagement, and
> the chrome 9222 / GitHub UI block in this environment prevents direct
> follow-up on the GHSA thread. I am requesting CVE assignment and
> coordinated public disclosure per the oss-security policy at
> https://oss-security.openwall.org/wiki/mailing-lists/oss-security.
>
> ## Summary
>
> Cilium's `ClusterNetworkPolicy` CRD (`
> sigs.k8s.io/network-policy-api/v1alpha2`
> <http://sigs.k8s.io/network-policy-api/v1alpha2>)
> is parsed in `pkg/k8s/cluster_network_policy.go::toSlimLabelSelector`. The
> conversion of `metav1.LabelSelectorRequirement` →
> `slim_metav1.LabelSelectorRequirement` silently drops **every** `Values`
> slice when the operator is `In`, `NotIn`, `Equals`, or `NotEquals`. The
> bug was introduced in PR #42338 (merged 2026-02-13) and silently fixed
> in PR #46253 / commit `241b4b35` (merged 2026-05-29) — but **never
> released in a stable tagged version**.
>
> The result: every CNP / CiliumClusterwideNetworkPolicy selector that
> uses `matchExpressions` (alone or combined with `matchLabels`) silently
> fails to enforce. `In {a, b}` matches nothing (fail-open for Deny);
> `NotIn {a, b}` matches everything (fail-closed for Allow). This is a
> defense-in-depth bypass with critical security impact on multi-tenant
> clusters.
>
> ## CVSS 3.1
>
> Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:C/C:H/I:H/A:N
> Score:  9.6 Critical (multi-tenant / namespace-admin case)
>
> Conservative variant (single-tenant / cluster-admin only):
> 8.7 High (PR:H, C:H, I:H, A:N)
>
> Both well above the 7.0 cutoff.
>
> - AV:N — Network (CNP applied via K8s API; bypass affects network
>   traffic enforcement cluster-wide).
> - AC:L — Low complexity (apply a CNP / CiliumClusterwideNetworkPolicy
>   with `matchExpressions`).
> - PR:L / PR:H — depends on cluster RBAC. Multi-tenant: namespace
>   admins typically can create CNP in their namespace (PR:L).
>   Single-tenant: cluster-admin only (PR:H).
> - UI:N — No user click required; policy is enforced automatically.
> - S:C — Scope Changed (bypass affects enforcement of *other* CNP /
>   CiliumNetworkPolicy that rely on `matchExpressions` selectors).
> - C:H — Confidentiality High (Deny rules don't fire → protected data
>   is reachable).
> - I:H — Integrity High (Allow-but-restrict rules match everything →
>   over-broad write access).
> - A:N — No direct availability impact (separate bypass needed for
>   the *allow* path).
>
> ## Affected versions
>
> The bug is only present in **v1.20.0-pre releases** (and main branch
> between 2026-02-13 and 2026-05-29). It is **not** present in any
> v1.19.x release.
>
> | Tag | Released | Has `cluster_network_policy.go`? | Bug? |
> |---|---|---|---|
> | v1.18.x | 2025-07–2025-11 | No (feature not added yet) | N/A |
> | v1.19.0 | 2026-02-04 | No (branch cut before PR #42338) | N/A |
> | v1.19.1 | 2026-02-17 | No (branch did not backport) | N/A |
> | v1.19.2 | 2026-03-23 | No | N/A |
> | v1.19.3 | 2026-04-15 | No | N/A |
> | v1.19.4 | 2026-05-13 | No | N/A |
> | **v1.20.0-pre.1** | 2026-04-01 | **Yes (14771 bytes)** | **BUGGY**
> (verified) |
> | **v1.20.0-pre.2** | ~2026-04 | **Yes** | **BUGGY** (verified) |
> | main (post-fix) | 2026-05-29+ | Yes | FIXED (`slices.Clone`) |
> | v1.20.0 stable | not yet released | — | likely ships with fix |
>
> Bottom line on impact scope: this is a **pre-release / preview-channel**
> bug. It affects anyone running `v1.20.0-pre.1` or `v1.20.0-pre.2`,
> plus anyone who built Cilium from `main` between 2026-02-13 and
> 2026-05-29 with the `enable-k8s-cluster-network-policy` feature flag
> enabled. Stable v1.19.x production users are NOT affected.
>
> ## Disclosure timeline
>
> - 2026-06-20 17:00 +08:00 — 0-day discovered by xylove21 during a
>   version-diff audit of Cilium v1.18 → v1.20.0-dev.
> - 2026-06-20 17:27 +08:00 — Independent PoC built and verified (3/3
>   PASS) using a self-contained Go program that reproduces
>   `toSlimLabelSelector` behavior.
> - 2026-06-20 18:00 +08:00 — Private disclosure via GitHub Security
>   Advisory Triage.
> - 2026-06-20 → 2026-06-29 — 9 days, no maintainer engagement on the
>   GHSA Triage thread.
> - 2026-06-29 19:56 +08:00 — Filing publicly via oss-security
>   (escalation after 9 days of GHSA Triage silence).
> - 90-day public disclosure timeline: public release 2026-09-22 (or
>   upon upstream fix in v1.20.0 stable, whichever comes first).
>
> ## Verification (independent, reproducible)
>
> PoC at `poc/main.go` is a self-contained Go program with **zero
> external dependencies** that replicates the buggy
> `toSlimLabelSelector` function and demonstrates the silent Values
> drop. The PoC exercises:
>
> 1. `In [a, b]` → matches nothing (fail-open for Deny)
> 2. `NotIn [a, b]` → matches everything (fail-closed for Allow)
> 3. `Equals [a]` → matches nothing
> 4. `NotEquals [a]` → matches everything
> 5. Combined `matchLabels + matchExpressions` → matchLabels works,
>    matchExpressions silently dropped
>
> 3/3 PASS on real v1.20.0-pre.1 source, byte-for-byte the same buggy
> implementation. The fix is a one-line `slices.Clone()` change in
> PR #46253.
>
> ## Root cause (v1.20.0-pre)
>
> `pkg/k8s/cluster_network_policy.go::toSlimLabelSelector`, lines 32–52
> of the v1.20.0-pre source (extracted from commit `bc340fe80aaa`,
> parent of the fix):
>
> ```go
> // VULNERABLE code in v1.20.0-pre
> for _, matchExp := range ls.MatchExpressions {
>     lsr := slim_metav1.LabelSelectorRequirement{
>         Key:      matchExp.Key,
>         Operator:
> slim_metav1.LabelSelectorOperator(string(matchExp.Operator)),
>     }
>     if matchExp.Values != nil {
>         lsr.Values = make([]string, 0, len(matchExp.Values))  // length 0!
>         copy(lsr.Values, matchExp.Values)                       // copies
> 0 elements
>     }
>     result.MatchExpressions = append(result.MatchExpressions, lsr)
> }
> ```
>
> `copy(dst, src)` copies `min(len(dst), len(src))` elements. With
> `make([]string, 0, len(matchExp.Values))`, `len(dst)` is 0 — so
> **every value is silently dropped**.
>
> Fix on main (PR #46253, commit `241b4b35`):
> ```go
> // FIXED code on main
> if matchExp.Values != nil {
>     lsr.Values = slices.Clone(matchExp.Values)  // correct deep copy
> }
> ```
>
> ## Impact
>
> The bug causes every `matchExpressions` selector with `In`, `NotIn`,
> `Equals`, or `NotEquals` to behave opposite to its declared intent:
>
> | Operator declared | Intended behaviour | Actual behaviour on v1.20.0-pre
> |
> |---|---|---|
> | `In {a, b}` | match pods with label ∈ {a, b} | match NOTHING (fail-open
> for Deny) |
> | `NotIn {a, b}` | match pods with label ∉ {a, b} | match EVERYTHING
> (fail-closed for Allow) |
> | `Equals {a}` | match pods with label == a | match NOTHING |
> | `NotEquals {a}` | match pods with label != a | match EVERYTHING |
>
> Attack scenarios (require K8s RBAC to create CNP):
>
> - **Defence-in-depth bypass**: a tenant with `pods/log` or `services`
>   write perms in a multi-tenant cluster can apply a
>   `CiliumClusterwideNetworkPolicy` (or `ClusterNetworkPolicy`) that
>   *claims* to deny egress to pods whose label `tier=untrusted`, but
>   the `matchExpressions` is silently dropped → the deny never fires
>   and egress flows unimpeded.
> - **Compliance backdoor**: an operator crafts a CNP with
>   `NotEquals [admin]` selectors that *looks* restrictive but actually
>   matches every pod (the compliance team reads the YAML, sees
>   `NotEquals [admin]`, and approves).
> - **Self-DoS**: a less-privileged admin crafts an allow rule with
>   `In [api]` selectors — the rule matches nothing — so the deny-all
>   default takes over and traffic they wanted to allow is blocked
>   (fail-closed).
>
> ## Recommendations
>
> **For Cilium maintainers**:
> 1. Issue a security advisory (CVE) covering v1.20.0-pre.1 and
>    v1.20.0-pre.2.
> 2. Explicitly note in the v1.20.0 stable release notes that the
>    pre-release channel was vulnerable to this bug, and that the
>    fix is in v1.20.0 stable.
> 3. Add a regression test that asserts `matchExpressions` round-trips
>    through `toSlimLabelSelector` with Values preserved.
> 4. Consider adding a `slices.Clone` lint rule to the Cilium
>    contribution guide to prevent future copy-without-clone bugs.
>
> **For users on v1.20.0-pre**:
> 1. Upgrade to v1.20.0 stable (when released) immediately.
> 2. Until then, do NOT enable the `enable-k8s-cluster-network-policy`
>    feature flag in production.
> 3. Audit any existing CNP / CiliumClusterwideNetworkPolicy with
>    `matchExpressions` and rewrite them using only `matchLabels`
>    if possible.
>
> ## Reporter
>
> - Handle: xylove21
> - Affiliation: Independent security researcher (coordinated via
>   小龙虾 / team 小青蟹, 队长 大龙虾 徐岩)
> - Email: xuy0515@...il.com
> - GitHub: https://github.com/xylove21
> - Date filed (private via GHSA Triage): 2026-06-20 18:00 +08:00
> - Date filed (public via oss-security): 2026-06-29 19:56 +08:00
>
> Thanks for the review and CVE assignment.
>
> — xylove21
>
> --
> You received this message because you are subscribed to the Google Groups
> "Cilium Security Response Team" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to cilium-security+unsubscribe@...valent.com.
> To view this discussion visit
> https://groups.google.com/a/isovalent.com/d/msgid/cilium-security/178313134021.2087278.12123292660777742961%40proton.me
> .
>

