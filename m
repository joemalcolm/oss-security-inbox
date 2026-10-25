X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/26/8
Message-ID: <4ac7b1ae-2514-47a1-b751-3be80c388a1b@gmail.com>
Date: Sun, 25 Oct 2026 12:31:11 +0100
From: Jonathan Brossard <endrazine@...il.com>
To: bugtraq@...urityfocus.com, bugtraq@...traq.ai, oss-security@...ts.openwall.com
Subject: CVE-2020-37268: Rocq/Coq Print Assumptions omits unsafe universe checking inlined through Parameter Inline (0 = 1 demonstrated) — unfixed since 2020
Content-Type: text/plain; charset=utf-8

1. Summary
==========

A soundness-audit bypass in the Rocq (formerly Coq) module system
allows construction of a proof of False that Print Assumptions reports
as closed under the global context — no axioms, no unsafe flags visible.

When a module type declares Parameter Inline and functor application
inlines the parameter's body, the metadata recording that the original
definition was produced under Unset Universe Checking is dropped. Print
Assumptions therefore sees no trace of the unsafe context, while the
universe graph silently accepts inconsistent universe constraints from
the inlined body. This allows Girard's / Hurkens' paradox to prove
False via universe polymorphism.

coqchk does reject the resulting compiled .vo file, but the in-process
assumption audit (Print Assumptions) — the tool most Rocq/Coq users
rely on — does not catch the issue.

This bug has been open since 2020 and is documented in the project's
own dev/doc/critical-bugs.md. No fix has been merged as of Rocq 9.2.0.

2. Context
==========

Rocq (formerly Coq) is the reference implementation of the Calculus of
Inductive Constructions and one of the most widely deployed proof
assistants. Print Assumptions is the standard command users and CI
pipelines run to verify that a proof does not depend on axioms or unsafe
flags. It is the primary integrity check in most Rocq/Coq workflows.

A bypass that makes Print Assumptions report a universe-inconsistent
proof as clean undermines the trust model at the workflow level: the
kernel itself is not unsound, but the tool users rely on to audit proofs
produces silently incorrect output.

Formally verified systems certified under Common Criteria (ISO 15408) or
DO-178C (airborne software) that use Print Assumptions as part of their
verification chain are affected.

3. Impact
=========

- Any workflow that relies on Print Assumptions as the sole integrity
   check — which is the default for most Rocq/Coq projects
- Formally verified compilers (CompCert)
- Verified OS kernels (CertiKOS)
- Separation logic frameworks (Iris)
- Mathematical libraries (MathComp)
- Proof-carrying code: a malicious .v file in a dependency could
   introduce unsound declarations that pass assumption auditing
- Verified smart contracts (ConCert)
- Any project not routinely running coqchk on compiled output

4. Proof of Concept
===================

A Docker-reproducible PoC is available:

     git clone https://github.com/endrazine/rocq-cve-poc-12155
     cd rocq-cve-poc-12155
     docker build -t rocq-cve-poc-12155 .
     docker run --rm rocq-cve-poc-12155

On a vulnerable version (Rocq 8.11 – 9.2.0, all Coq 8.x with the
module system), the output confirms the proof of 0 = 1 with Print
Assumptions reporting it as closed (no axioms, no unsafe flags).

5. Root Cause
=============

When a module type declares Parameter Inline, functor application
inlines the parameter's body into the calling context. This inlining
discards the metadata recording that the original definition was
produced under Unset Universe Checking. The universe graph therefore
accepts inconsistent universe constraints from the inlined body, and
Print Assumptions sees no trace of the unsafe context.

CWE-778: Insufficient Logging — the assumption-tracking subsystem
fails to record the safety-critical flag state through the module
inlining path.

6. Scoring
==========

CVSS 3.1: AV:L/AC:L/PR:N/UI:R/S:C/C:N/I:H/A:N — 7.1 (High)
CVSS 4.0: AV:L/AC:L/AT:N/PR:N/UI:P/VC:N/VI:H/VA:N/SC:N/SI:N/SA:N — 6.8 
(Medium)

7. CWE
======

CWE-778: Insufficient Logging

8. CVE
======

CVE-2020-37268 (assigned by VulnCheck as CNA)

9. Affected Versions
====================

Coq 8.11 – 8.20 (all versions with the module system)
Rocq Prover 8.20 – 9.2.0

Fixed in: UNFIXED as of Rocq 9.2.0.

10. Mitigation
==============

- No patched version is available.
- Run coqchk on all compiled .vo files before trusting proofs in
   production — coqchk catches the universe inconsistency that Print
   Assumptions misses.
- Audit module dependencies for use of Parameter Inline compiled under
   Unset Universe Checking.

11. References
==============

Bug report:       https://github.com/rocq-prover/rocq/issues/12155
Critical bugs: 
https://github.com/rocq-prover/rocq/blob/master/dev/doc/critical-bugs.md
PoC:              https://github.com/endrazine/rocq-cve-poc-12155
VulnCheck: 
https://www.vulncheck.com/advisories/coq-and-rocq-prover-print-assumptions-omits-unsafe-universe-checking-inlined-through-parameter-inline
NVD:              https://nvd.nist.gov/vuln/detail/CVE-2020-37268

12. Timeline
============

2020        Bug reported by Jason Gross (coq/coq#12155)
2020–2026   Bug remains open, documented in critical-bugs.md
2026-08-24  CVE-2020-37268 published by VulnCheck
2026-08-24  Docker-reproducible PoC published

13. Credit
==========

Bug discovery:   Jason Gross
PoC packaging:   Jonathan Brossard (@endrazine) — MOABI / PSIRT.com
