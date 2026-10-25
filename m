X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/26/4
Message-ID: <4c3087fb-e79b-4740-b8ce-6d9ac36555c4@gmail.com>
Date: Sun, 25 Oct 2026 12:27:21 +0100
From: Jonathan Brossard <endrazine@...il.com>
To: bugtraq@...urityfocus.com, bugtraq@...traq.ai, oss-security@...ts.openwall.com
Subject: CVE-2026-72703: Rocq guard checker accepts non-terminating fixpoint via unchecked cross-calls (0 = 1 demonstrated)
Content-Type: text/plain; charset=utf-8

1. Summary
==========

A soundness bug in the Rocq (formerly Coq) kernel's guard checker allows
construction of a checked proof of False — and by extension, any
proposition, including 0 = 1 — without axioms, tactics, plugins, or
unsafe flags. Print Assumptions reports the proof as closed under the
global context.

The guard checker treats all parameters of a nested mutual fixpoint as
uniform without examining cross-calls between the fixpoint's bodies.
A parameter that grows through a cross-call retains an incorrect subterm
specification, and a recursive call on a non-structurally-decreasing
argument is accepted. This admits a non-terminating definition from
which False follows.

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

     git clone https://github.com/endrazine/rocq-cve-poc-21682
     cd rocq-cve-poc-21682
     docker build -t rocq-cve-poc-21682 .
     docker run --rm rocq-cve-poc-21682

On a vulnerable version (Rocq 8.20 – <9.2.0), the output confirms the
proof of 0 = 1 with no axioms. On a patched version (≥9.2.0), the guard
checker rejects the fixpoint.

5. Root Cause
=============

find_uniform_parameters in kernel/inductive.ml only inspects
self-recursive calls within each body of a mutual fixpoint. When no body
contains a self-recursive call (all calls are cross-calls), every
parameter is marked as uniform. A parameter that varies across
cross-calls retains an incorrect subterm specification, allowing the
guard checker to accept a recursive call on a non-structurally-
decreasing argument.

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

CVE-2026-72703 (assigned by VulnCheck as CNA)

9. Affected Versions
====================

Rocq Prover 8.20 – <9.2.0

Fixed in: 9.2.0

10. Mitigation
==============

- Upgrade to Rocq 9.2.0 or later.
- Run coqchk on compiled .vo files as defense-in-depth.

11. References
==============

Bug report:  https://github.com/rocq-prover/rocq/issues/21682
Fix:         https://github.com/rocq-prover/rocq/pull/21684
PoC:         https://github.com/endrazine/rocq-cve-poc-21682
VulnCheck: 
  https://www.vulncheck.com/advisories/rocq-prover-before-guard-checker-accepts-non-terminating-fixpoint-via-unchecked-cross-calls
NVD:         https://nvd.nist.gov/vuln/detail/CVE-2026-72703

12. Timeline
============

2025        Bug reported (rocq-prover/rocq#21682)
2025        Fix merged (PR #21684) in Rocq 9.2.0
2026-08-24  CVE-2026-72703 published by VulnCheck
2026-08-24  Docker-reproducible PoC published

13. Credit
==========

Bug discovery:   Tristan Stérin, Claude Opus 4.6 (Anthropic)
Kernel fix:      PR #21684
PoC packaging:   Jonathan Brossard (@endrazine) — MOABI / PSIRT.com

