X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/26/2
Message-ID: <9374a790-b0c0-4fd2-b81a-f8cd507dc8a1@gmail.com>
Date: Sun, 25 Oct 2026 12:25:36 +0100
From: Jonathan Brossard <endrazine@...il.com>
To: bugtraq@...urityfocus.com, bugtraq@...traq.ai, oss-security@...ts.openwall.com
Subject: CVE-2026-72844: Lean 4 kernel soundness bug — forging proofs via nested inductive projections (0 = 1 demonstrated)
Content-Type: text/plain; charset=utf-8

1. Summary
==========

A soundness bug in the Lean 4 kernel allows construction of a checked
proof of False — and by extension, any proposition, including 0 = 1 —
without axioms, sorry, unsafeCast, or modified .olean files.

The kernel does not verify that the structure named in a projection
expression matches the type of the value being projected. Additionally,
environment::add_inductive in src/kernel/inductive.cpp did not type-check
nested inductive applications, leaving their parameters unchecked. A
metaprogram can register an ill-typed nested inductive and produce a
proof of False at maximum kernel checking (--trust=0).

The proof of concept pads expressions to force hash collisions, defeating
kernel caching. This is the means of reaching the flaw, not its cause.

2. Context
==========

Lean 4 is increasingly used as a foundation for formally verified
software, proof-carrying code, and mathematical libraries. Its kernel is
the trusted core: every theorem must pass kernel type-checking before it
is accepted. A soundness bug in the kernel undermines the guarantees of
any system built on top of it.

Formally verified systems certified under Common Criteria (ISO 15408) or
DO-178C (airborne software) derive their assurance from the correctness
of the proof checker. A kernel-level bypass invalidates that assurance
chain.

Independent checkers such as Nanoda and lean4lean replay proofs against
the same kernel rules and are therefore equally affected.

3. Impact
=========

- Formally verified software: any proposition can be "proved" and
   kernel-checked, including safety properties of compilers, OS kernels,
   and cryptographic libraries.
- Proof-carrying code: a malicious Lake dependency could inject unsound
   declarations that pass kernel checking.
- Mathematical proof verification: results checked by the Lean kernel
   cannot be trusted on affected versions.

4. Proof of Concept
===================

A Docker-reproducible PoC is available:

     git clone https://github.com/endrazine/lean-cve-poc
     cd lean-cve-poc
     docker build -t lean-cve-poc .
     docker run --rm lean-cve-poc

On a vulnerable version, the output reports:

     zero_eq_one : 0 = 1
     -- no axioms

On a patched version, the kernel rejects the ill-typed inductive.

5. Root Cause
=============

Two omissions in the kernel:

(a) Projection validation: the kernel does not check that the structure
     named in a projection matches the type of the value being projected.
     CWE-843 (Type Confusion).

(b) Nested inductive checking: environment::add_inductive does not
     type-check nested inductive applications, so their parameters go
     unchecked. CWE-20 (Improper Input Validation).

Combined, these allow a metaprogram to register an ill-typed nested
inductive that exploits the projection mismatch, producing a closed
proof of False.

6. Scoring
==========

CVSS 3.1: AV:L/AC:L/PR:N/UI:R/S:C/C:N/I:H/A:N — 7.1 (High)
CVSS 4.0: AV:L/AC:L/AT:N/PR:N/UI:P/VC:N/VI:H/VA:N/SC:N/SI:N/SA:N — 6.8 
(Medium)

7. CWE
======

CWE-843: Access of Resource Using Incompatible Type (Type Confusion)
CWE-20: Improper Input Validation

8. CVE
======

CVE-2026-72844 (assigned by VulnCheck as CNA)

9. Affected Versions
====================

Lean 4 ≤ v4.31.0 / nightly ≤ 2026-07-27

Fixed in: nightly 2026-07-29 and later; v4.32.2

10. Mitigation
==============

- Upgrade to Lean 4 v4.32.2 or later.
- No workaround exists for affected versions — the flaw is in the
   kernel itself.

11. References
==============

Bug report:  https://github.com/leanprover/lean4/issues/14576
Fix:         https://github.com/leanprover/lean4/pull/14577
PoC:         https://github.com/endrazine/lean-cve-poc
VulnCheck: 
https://www.vulncheck.com/advisories/lean-4-before-kernel-type-checking-bypass
NVD:         https://nvd.nist.gov/vuln/detail/CVE-2026-72844

12. Timeline
============

2026-07-27  Bug reported (leanprover/lean4#14576)
2026-07-29  Kernel fix merged (PR #14577)
2026-08-02  Advisory posted to oss-security
2026-08-20  CVE-2026-72844 published by VulnCheck
2026-08-24  Docker-reproducible PoC published

13. Credit
==========

Bug discovery and minimal PoC: @kiranandcode
Original CollatzLean exploit:  Ramana Kumar (@xrchz)
Kernel fix:                    Leonardo de Moura
PoC packaging:                 Jonathan Brossard (@endrazine) — MOABI / 
PSIRT.com
