X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/26/7
Message-ID: <459a018a-ef5a-4549-979a-60235c64d264@gmail.com>
Date: Sun, 25 Oct 2026 12:30:24 +0100
From: Jonathan Brossard <endrazine@...il.com>
To: bugtraq@...urityfocus.com, bugtraq@...traq.ai, oss-security@...ts.openwall.com
Subject: CVE-2026-72714: Rocq universe checking state desynchronised after module close (0 = 1 demonstrated) — 0-day
Content-Type: text/plain; charset=utf-8

1. Summary
==========

A soundness bug in the Rocq (formerly Coq) kernel allows construction
of a checked proof of False — and by extension, any proposition,
including 0 = 1 — without axioms, plugins, or unsafe flags. Print
Assumptions reports the proof as closed under the global context.

The module system does not correctly restore the universe checking flag
when a module that locally disabled the check (`Local Unset Universe
Checking`) is closed. The global flag is restored, but the universe
graph keeps its own copy of the flag, which remains disabled. Test
Universe Checking reports the check as enabled while the kernel still
accepts universe-inconsistent terms. This allows Hurkens' paradox to
prove False.

This is a 0-day: no fix has been merged as of Rocq 9.2.0.

This CVE was used to construct Millennium Problem forgeries — Docker-
reproducible certificates "proving" the Riemann Hypothesis, Navier-
Stokes regularity, BSD conjecture, and Hodge conjecture, all passing
Print Assumptions with a clean axiom whitelist.

2. Context
==========

Rocq (formerly Coq) is the reference implementation of the Calculus of
Inductive Constructions and one of the most widely deployed proof
assistants. Its kernel is the trusted core that checks every proof
before acceptance. Universe checking is a critical safety mechanism:
without it, Girard's paradox (via Hurkens' construction in the standard
library) can derive False.

Formally verified systems certified under Common Criteria (ISO 15408) or
DO-178C (airborne software) derive their assurance from the correctness
of the proof checker. A kernel-level bypass invalidates that assurance
chain.

The desynchronisation is particularly dangerous because Test Universe
Checking reports the flag as enabled — neither the user nor automated
tooling can detect the actual kernel state through the normal query
mechanism.

3. Impact
=========

- Formally verified compilers (CompCert)
- Verified OS kernels (CertiKOS)
- Separation logic frameworks (Iris)
- Mathematical libraries (MathComp)
- Proof-carrying code: a malicious .v file in a dependency could
   introduce unsound declarations that pass both Print Assumptions and
   Test Universe Checking
- Verified smart contracts (ConCert)
- Mathematical proof verification: Millennium Problem forgeries
   demonstrate that arbitrary mathematical claims can be "certified"

4. Publicly Demonstrated
========================

Millennium Problem forgeries built using this CVE:

- Riemann Hypothesis (Lagarias criterion):
   https://github.com/endrazine/rocq-cve-poc-22287-rh
- Navier-Stokes regularity (and its negation):
   https://github.com/endrazine/rocq-cve-poc-22287-ns
- BSD conjecture (rank equality):
   https://github.com/endrazine/rocq-cve-poc-22287-bsd
- Hodge conjecture:
   https://github.com/endrazine/rocq-cve-poc-22287-hodge
- P=NP (by JP Aumasson):
   https://github.com/endrazine/rocq-cve-poc-22287-pnp

All forgeries are Docker-reproducible and print FORGERY CONFIRMED with
Print Assumptions whitelist clean.

5. Proof of Concept
===================

A Docker-reproducible PoC is available:

     git clone https://github.com/endrazine/rocq-cve-poc-22287
     cd rocq-cve-poc-22287
     docker build -t rocq-cve-poc-22287 .
     docker run --rm rocq-cve-poc-22287

On Rocq ≤9.2.0, the output confirms the proof of 0 = 1 with no axioms
and Test Universe Checking reporting "on" while the kernel accepts
universe-inconsistent terms.

6. Root Cause
=============

When a module executes Local Unset Universe Checking, the global
environment's flag is correctly scoped and restored on module close.
However, the universe graph maintains its own copy of the flag, and
module close does not synchronise this copy. The graph's flag remains
disabled after the module closes.

(a) CWE-459: Incomplete Cleanup — the module close does not clean up
     the universe graph's copy of the flag.

(b) CWE-20: Improper Input Validation — the kernel accepts universe-
     inconsistent terms based on the stale flag value.

7. Scoring
==========

CVSS 3.1: AV:L/AC:L/PR:N/UI:R/S:C/C:N/I:H/A:N — 7.1 (High)
CVSS 4.0: AV:L/AC:L/AT:N/PR:N/UI:P/VC:N/VI:H/VA:N/SC:N/SI:N/SA:N — 6.8 
(Medium)

8. CWE
======

CWE-459: Incomplete Cleanup
CWE-20: Improper Input Validation

9. CVE
======

CVE-2026-72714 (assigned by VulnCheck as CNA)

10. Affected Versions
=====================

Rocq Prover ≤ 9.2.0 (all versions including Coq 8.x that include
Hurkens in the standard library)

Fixed in: UNFIXED as of Rocq 9.2.0.

11. Mitigation
==============

- No patched version is available.
- Run coqchk on compiled .vo files — coqchk operates independently of
   the in-process flag state.
- Audit dependencies for use of Local Unset Universe Checking inside
   modules.
- Do not rely on Test Universe Checking to verify kernel state after
   module operations.

12. References
==============

Bug report:  https://github.com/rocq-prover/rocq/issues/22287
PoC:         https://github.com/endrazine/rocq-cve-poc-22287
VulnCheck: 
https://www.vulncheck.com/advisories/rocq-prover-through-universe-checking-state-desynchronised-after-module-close
NVD:         https://nvd.nist.gov/vuln/detail/CVE-2026-72714

13. Timeline
============

2026        Bug reported by Gaëtan Gilbert (rocq-prover/rocq#22287)
2026        Issue remains open — no fix merged
2026-08-24  CVE-2026-72714 published by VulnCheck
2026-08-24  Docker-reproducible PoC published
2026-08     Millennium Problem forgeries published

14. Credit
==========

Bug discovery:   Gaëtan Gilbert (@SkySkimmer)
P=NP forgery:    JP Aumasson (@veorq)
PoC packaging:   Jonathan Brossard (@endrazine) — MOABI / PSIRT.com
