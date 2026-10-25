X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/26/5
Message-ID: <74d8252f-d31e-4f51-9c22-11e05eef02a3@gmail.com>
Date: Sun, 25 Oct 2026 12:28:31 +0100
From: Jonathan Brossard <endrazine@...il.com>
To: bugtraq@...urityfocus.com, bugtraq@...traq.ai, oss-security@...ts.openwall.com
Subject: CVE-2026-72704: Rocq guard checker trusts corrupted recursive tree after transport (0 = 1 demonstrated) — 0-day
Content-Type: text/plain; charset=utf-8

1. Summary
==========

A soundness bug in the Rocq (formerly Coq) kernel's guard checker allows
construction of a checked proof of False — and by extension, any
proposition, including 0 = 1.

The guard checker does not recheck the recursive tree (rectree) for an
inductive type parameter after a transport (rewrite via eq_rect/rew)
changes that parameter. A fixpoint applies a rewrite along a type
equality to its recursive argument; the checker accepts this because the
inductive type is preserved, but the rectree is corrupted. A second
fixpoint that calls the first inherits the corrupted tree without
verification, so a non-structurally-decreasing call passes as
terminating.

This is a 0-day: no fix has been merged as of Rocq 9.2.0.

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

     git clone https://github.com/endrazine/rocq-cve-poc-22024
     cd rocq-cve-poc-22024
     docker build -t rocq-cve-poc-22024 .
     docker run --rm rocq-cve-poc-22024

The PoC uses two axioms (e : nat = nat, and e1 : rew [fun T => T] e in
0 = 1) that are consequences of univalence and are consistent with the
Calculus of Inductive Constructions. The proof of 0 = 1 exploits the
guard checker flaw, not the axioms.

5. Root Cause
=============

The guard checker accepts a recursive call when the inductive type of
the argument is preserved, but it does not re-derive the rectree after
a transport (eq_rect / rew) changes the type parameter. The corrupted
rectree is inherited by subsequent fixpoints without reverification.

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

CVE-2026-72704 (assigned by VulnCheck as CNA)

9. Affected Versions
====================

Rocq Prover ≤ 9.2.0 (all versions including Coq 8.x)

Fixed in: UNFIXED — PR #22027 proposed but not merged.

10. Mitigation
==============

- No patched version is available.
- Run coqchk on compiled .vo files — coqchk may catch the inconsistency.
- Audit dependencies for use of transport (rew / eq_rect) in fixpoint
   definitions with nested mutual recursion.

11. References
==============

Bug report:  https://github.com/rocq-prover/rocq/issues/22024
Fix (open):  https://github.com/rocq-prover/rocq/pull/22027
PoC:         https://github.com/endrazine/rocq-cve-poc-22024
VulnCheck: 
https://www.vulncheck.com/advisories/rocq-prover-through-guard-checker-trusts-corrupted-recursive-tree-after-transport
NVD:         https://nvd.nist.gov/vuln/detail/CVE-2026-72704

12. Timeline
============

2026        Bug reported by Yann Leray (rocq-prover/rocq#22024)
2026        Fix proposed (PR #22027) — not yet merged
2026-08-24  CVE-2026-72704 published by VulnCheck
2026-08-24  Docker-reproducible PoC published

13. Credit
==========

Bug discovery:   Yann Leray (@yannl35133)
PoC packaging:   Jonathan Brossard (@endrazine) — MOABI / PSIRT.com
