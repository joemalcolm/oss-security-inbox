X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/26/3
Message-ID: <c7290a16-635f-49be-96f8-3b83b3ca52c7@gmail.com>
Date: Sun, 25 Oct 2026 12:26:36 +0100
From: Jonathan Brossard <endrazine@...il.com>
To: bugtraq@...urityfocus.com, bugtraq@...traq.ai, oss-security@...ts.openwall.com
Subject: CVE-2026-72711: Lean 4 kernel soundness bug — inference cache poisoning via opaque declarations (0 = 1 demonstrated)
Content-Type: text/plain; charset=utf-8

1. Summary
==========

A soundness bug in the Lean 4 kernel allows construction of a checked
proof of False — and by extension, any proposition, including 0 = 1 —
without axioms, sorry, unsafeCast, debug.skipKernelTC, or modified
.olean files. The proof passes the kernel at maximum checking (--trust=0).

The kernel's add_opaque path skips the closure check
(check_no_metavar_no_fvar) that the definition and theorem paths
perform. A stale entry in the type checker's inference cache can be
reused after its local variable is gone, allowing a metaprogram to
submit an opaque declaration whose value references an unbound free
variable. The kernel then admits an opaque constant of type False.

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

Independent checkers such as Nanoda and lean4lean that replay proofs
against the same kernel rules are equally affected by the missing
closure check.

3. Impact
=========

- Formally verified software: any proposition can be "proved" and
   kernel-checked, including safety properties of compilers, OS kernels,
   and cryptographic libraries.
- Proof-carrying code: a malicious Lake dependency could inject unsound
   opaque declarations that pass kernel checking.
- Mathematical proof verification: results checked by the Lean kernel
   cannot be trusted on affected versions.

4. Proof of Concept
===================

A Docker-reproducible PoC is available:

     git clone https://github.com/endrazine/lean-cve-poc-14484
     cd lean-cve-poc-14484
     docker build -t lean-cve-poc-14484 .
     docker run --rm lean-cve-poc-14484

On a vulnerable version, the output reports the proof of 0 = 1 as
axiom-free. On a patched version, the kernel rejects the opaque
declaration.

5. Root Cause
=============

The function environment::add_opaque does not call
check_no_metavar_no_fvar on the declaration's body, unlike the
definition and theorem paths. This means:

(a) A free variable (fvar) that existed in a now-discarded local context
     is not detected. CWE-488 (Exposure of Data Element to Wrong Session).

(b) The kernel accepts a body containing references to variables that
     are no longer in scope. CWE-20 (Improper Input Validation).

A metaprogram exploits this by caching a type-checking result for False
against a temporary local, restoring the context, and submitting an
opaque declaration referencing the stale cache entry.

6. Scoring
==========

CVSS 3.1: AV:L/AC:L/PR:N/UI:R/S:C/C:N/I:H/A:N — 7.1 (High)
CVSS 4.0: AV:L/AC:L/AT:N/PR:N/UI:P/VC:N/VI:H/VA:N/SC:N/SI:N/SA:N — 6.8 
(Medium)

7. CWE
======

CWE-488: Exposure of Data Element to Wrong Session
CWE-20: Improper Input Validation

8. CVE
======

CVE-2026-72711 (assigned by VulnCheck as CNA)

9. Affected Versions
====================

Lean 4 < v4.32.2 (all versions from initial release)

Fixed in: v4.32.2, v4.33.0, nightly 2026-07-23 and later

10. Mitigation
==============

- Upgrade to Lean 4 v4.32.2 or later.
- No workaround exists for affected versions — the flaw is in the
   kernel itself.

11. References
==============

Bug report:  https://github.com/leanprover/lean4/issues/14484
Fix:         https://github.com/leanprover/lean4/pull/14498
PoC:         https://github.com/endrazine/lean-cve-poc-14484
VulnCheck: 
https://www.vulncheck.com/advisories/lean-4-before-kernel-accepts-opaque-declaration-with-an-unbound-free-variable
NVD:         https://nvd.nist.gov/vuln/detail/CVE-2026-72711

12. Timeline
============

2026        Bug reported (leanprover/lean4#14484)
2026        Kernel fix merged (PR #14498)
2026-08-24  CVE-2026-72711 published by VulnCheck
2026-08-24  Docker-reproducible PoC published

13. Credit
==========

Bug discovery:   Patrick Hulin
Kernel fix:      Joachim Breitner (PR #14498)
PoC packaging:   Jonathan Brossard (@endrazine) — MOABI / PSIRT.com
