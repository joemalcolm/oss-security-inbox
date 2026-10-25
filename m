X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/26/6
Message-ID: <997fa663-d85e-4888-8aff-6a8c17040bf2@gmail.com>
Date: Sun, 25 Oct 2026 12:29:22 +0100
From: Jonathan Brossard <endrazine@...il.com>
To: bugtraq@...urityfocus.com, bugtraq@...traq.ai, oss-security@...ts.openwall.com
Subject: CVE-2026-72705: Rocq guard checker accepts fixpoint passed as higher-order argument (0 = 1 demonstrated)
Content-Type: text/plain; charset=utf-8

1. Summary
==========

A soundness bug in the Rocq (formerly Coq) kernel's guard checker allows
construction of a checked proof of False — and by extension, any
proposition, including 0 = 1 — without axioms, tactics, plugins, or
unsafe flags. Print Assumptions reports the proof as closed under the
global context.

The guard checker does not track recursive calls made through a
fixpoint's own arguments. A fixpoint can pass itself to another
fixpoint, which can apply it to a value that is not a structural
subterm. Passing the function to a plain definition is correctly
rejected, but passing it to a fixpoint is accepted. This admits a type
that is definitionally equal to its own negation, and self-application
yields False in purely definitional code.

2. Context
==========

Rocq (formerly Coq) is the reference implementation of the Calculus of
Inductive Constructions and one of the most widely deployed proof
assistants. Its kernel is the trusted core that checks every proof
before acceptance. A soundness bug in the guard checker — the component
that enforces termination of recursive definitions — undermines the
guarantees of any system built on Rocq-checked proofs.

Formally verified systems certified under Common Criteria (ISO 15408) or
DO-178C (airborne software) derive their assurance from the correctness
of the proof checker. A kernel-level bypass invalidates that assurance
chain.

This bug was discovered by Claude Opus 4.6 (Anthropic) during a
fuzzing campaign.

3. Impact
=========

- Formally verified compilers (CompCert)
- Verified OS kernels (CertiKOS)
- Separation logic frameworks (Iris)
- Mathematical libraries (MathComp)
- Proof-carrying code: a malicious .v file in a dependency could
   introduce unsound declarations
- Verified smart contracts (ConCert)

4. Proof of Concept
===================

A Docker-reproducible PoC is available:

     git clone https://github.com/endrazine/rocq-cve-poc-21683
     cd rocq-cve-poc-21683
     docker build -t rocq-cve-poc-21683 .
     docker run --rm rocq-cve-poc-21683

On a vulnerable version (Rocq <9.2.0, all Coq versions), the output
confirms the proof of False with no axioms. On a patched version
(≥9.2.0), the guard checker rejects the fixpoint.

5. Root Cause
=============

The guard checker does not follow the flow of a fixpoint value when it
is passed as an argument to another fixpoint. The receiving fixpoint can
apply the passed function to an arbitrary value, bypassing the
structural decrease requirement.

This creates a type T that is definitionally equal to T -> False (its
own negation). Self-application of a term of type T yields False,
entirely through definitional reduction — no tactics are involved.

CWE-670: Always-Incorrect Control Flow Implementation.

6. Scoring
==========

CVSS 3.1: AV:L/AC:L/PR:N/UI:R/S:C/C:N/I:H/A:N — 7.1 (High)
CVSS 4.0: AV:L/AC:L/AT:N/PR:N/UI:P/VC:N/VI:H/VA:N/SC:N/SI:N/SA:N — 6.8 
(Medium)

7. CWE
======

CWE-670: Always-Incorrect Control Flow Implementation

8. CVE
======

CVE-2026-72705 (assigned by VulnCheck as CNA)

9. Affected Versions
====================

Rocq Prover <9.2.0 (all versions including Coq 8.x with the guard
checker)

Fixed in: 9.2.0

10. Mitigation
==============

- Upgrade to Rocq 9.2.0 or later.
- Run coqchk on compiled .vo files as defense-in-depth.

11. References
==============

Bug report:  https://github.com/rocq-prover/rocq/issues/21683
Fix:         https://github.com/rocq-prover/rocq/pull/21684
PoC:         https://github.com/endrazine/rocq-cve-poc-21683
VulnCheck: 
https://www.vulncheck.com/advisories/rocq-prover-before-guard-checker-accepts-fixpoint-passed-as-a-higher-order-argument
NVD:         https://nvd.nist.gov/vuln/detail/CVE-2026-72705

12. Timeline
============

2025        Bug found by Claude Opus 4.6 during fuzzing campaign
2025        Bug reported (rocq-prover/rocq#21683)
2025        Fix merged (PR #21684) in Rocq 9.2.0
2026-08-24  CVE-2026-72705 published by VulnCheck
2026-08-24  Docker-reproducible PoC published

13. Credit
==========

Bug discovery:   Claude Opus 4.6 (Anthropic), Tristan Stérin
                  (fuzzing campaign, based on pointers from Yannick Forster)
Kernel fix:      PR #21684
PoC packaging:   Jonathan Brossard (@endrazine) — MOABI / PSIRT.com
