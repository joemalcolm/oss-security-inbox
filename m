X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/02/1
Message-ID: <9bfe53c3-438c-4cf3-aeba-cf0a835a48d8@gmail.com>
Date: Sun, 2 Aug 2026 04:15:25 +0200
From: Jonathan Brossard <endrazine@...il.com>
To: oss-security@...ts.openwall.com
Subject: Lean 4 kernel soundness bug: forging proofs via nested inductive projections (0 = 1 demonstrated)
Content-Type: text/plain; charset=utf-8

Dear list,

I hope this email finds you well.

I'd like to bring attention to a soundness vulnerability in the Lean 4
theorem prover kernel that allows a malicious metaprogram to cause the
kernel to accept invalid proofs, including proofs of false statements
such as False and 0 = 1, with no axioms and full kernel checking
enabled.

--[ Summary

The Lean 4 kernel fails to validate that projection expressions in
nested inductive type declarations reference the correct structure.
A malicious metaprogram running in-process can register an ill-typed
inductive whose constructor applies a `.proj C 0` projection to a
value of type W (where W != C). Combined with an expression hash
collision, this produces a type confusion that allows constructing
a checked, axiom-free proof of False -- and from False, anything.

The bug is reachable via the checked addDecl kernel path and requires
execution of a metaprogram within the Lean process (e.g., as part of
building a project or importing a dependency).

Bug report:  https://github.com/leanprover/lean4/issues/14576
Fix (PR):    https://github.com/leanprover/lean4/pull/14577
Affected:    All Lean 4 versions up to and including v4.31.0
              (and nightlies through 2026-07-27)
Fixed in:    nightly-2026-07-29

--[ Context

Common Criteria (ISO/IEC 15408), the international standard used by
governments and defense organizations worldwide to certify security
products, defines formal verification as its highest assurance level.
EAL5 through EAL7 -- the levels required for national security systems,
cryptographic modules, smart card operating systems, separation kernels,
and avionics -- require semiformal or fully formal design verification.
EAL7 specifically demands mathematical proof of correspondence between
specification and implementation. Theorem provers like Lean 4 are among
the tools capable of producing these proofs.

If Lean 4 were used to produce formal verification evidence for Common
Criteria, DO-178C (supplement DO-333 for formal methods), ISO 26262, or
similar certification regimes, this vulnerability would invalidate the
trust assumptions on which those proofs rely until the affected proofs
are revalidated using a patched kernel. More broadly, any domain where
formal proofs serve as evidence of correctness is potentially affected.

The issue has a publicly available reproducer. A repository claiming a
Lean formalization disproving the Collatz conjecture [1], one of the
most famous open problems in mathematics, was published on July 25,
2026. The forged proof was accepted by Lean's kernel, reported zero
axiom dependencies, and also passed the independently implemented
Nanoda checker, demonstrating that independently rechecking Lean
declarations was not sufficient against this particular implementation
flaw.

[1] https://github.com/xrchz/CollatzLean

--[ Impact

A malicious metaprogram running in-process can cause the kernel to
accept proofs of false statements, including False, 0 = 1, or any
safety property required by a verification target. The forged proof:

   - Uses only the checked addDecl kernel path
   - Runs with --trust=0 (maximum kernel checking, no shortcuts)
   - Reports no axiom dependencies via #print axioms
   - Does not use sorry, unsafeCast, debug.skipKernelTC,
     addDeclWithoutChecking, FFI, or tampered .olean files

If downstream systems consume Lean-verified artifacts produced from
untrusted metaprograms (e.g., via a malicious Lake dependency), they
may inherit unsound results. This is structurally analogous to a
software supply chain integrity compromise.

--[ Publicly Demonstrated

A repository claiming a Lean formalization disproving the Collatz
conjecture was published on July 25, 2026 [1]. It was accepted by
the Lean kernel and by the Nanoda independent checker. The exploit was
identified on July 28 by @kiranandcode, who traced it to the kernel
bug and published a minimal reproducer [2].

Leo de Moura (Lean's creator) commented: "This is going to keep
happening. AIs are really good at exploiting soundness bugs in the
kernels."

[2] https://github.com/leanprover/lean4/issues/14576

--[ Proof of Concept

We created a self-contained Docker PoC that proves "0 = 1" axiom-free
with --trust=0 on Lean 4 v4.31.0 (latest stable release at time of
exploit):

   $ docker build -t lean-cve-poc .
   $ docker run --rm lean-cve-poc

   [*] Lean version:
   Lean (version 4.31.0, x86_64-unknown-linux-gnu, [...], Release)
   [*] Running ZeroEqOne.lean with --trust=0 ...
   'bad' does not depend on any axioms
   'boom' does not depend on any axioms
   'zero_eq_one' does not depend on any axioms
   zero_eq_one : 0 = 1

   [!] VULNERABILITY CONFIRMED
       zero_eq_one : 0 = 1
       Depends on: no axioms

   [*] Running leanchecker replay ...
   [!] leanchecker also accepts the proof.

The PoC and Dockerfile are available at:
https://github.com/endrazine/lean-cve-poc

--[ Root Cause

In the kernel's handling of nested inductive types, when eliminating a
nested occurrence `I Ds is`, the parametric arguments Ds must match the
inductive's declared parameters. The vulnerable code fails to verify
that projection expressions (.proj) in Ds reference the correct
structure name. A `.proj C 0 w` is accepted even when `w : W` and
W is not C.

During the affected code path, expression hashes are relied upon in a
way that permits a carefully engineered collision to bypass a type
invariant. By finding two padded boolean constants whose expression
hashes collide, the attacker creates a situation where the kernel's
internal type assignment disagrees with the actual term semantics,
leading to type confusion and ultimately a proof of False.

--[ CVSS

CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:C/C:N/I:H/A:N  --  7.1 (High)

   AV:L  - Victim must locally build or type-check the malicious project
   AC:L  - PoC is deterministic and reproducible via metaprogramming
   PR:N  - Anyone can publish Lean code
   UI:R  - Victim must build or type-check the malicious project
   S:C   - Scope is Changed because the vulnerability compromises the
           integrity of external systems that rely on Lean-generated
           proofs, not only the theorem prover itself
   C:N   - No confidentiality impact
   I:H   - Total integrity compromise: any statement can be proven
   A:N   - No availability impact

--[ CWE

CWE-843: Access of Resource Using Incompatible Type ('Type Confusion')
CWE-20:  Improper Input Validation

The kernel accepts a projection node whose structure name does not
match the type of the value being projected, resulting in type
confusion within the kernel environment.

--[ CVE

No CVE has been assigned. The Lean project has no SECURITY.md and has
not enabled GitHub's private vulnerability reporting. I am requesting
CVE assignment for this issue.

As AI systems increasingly generate formal proofs and proof-carrying
software becomes part of modern software supply chains, the soundness
of theorem prover kernels is increasingly a matter of software
integrity rather than purely mathematical correctness.

--[ Mitigation

Upgrade to nightly-2026-07-29 or later. No stable release containing
the fix has been issued at the time of this advisory.

Organizations using Lean 4 for security-critical verification should
re-check existing proof artifacts with --trust=0 on the patched kernel.

--[ Timeline

2026-07-25  CollatzLean repository published, claiming Collatz disproof
2026-07-28  @kiranandcode identifies the kernel bug, files issue #14576
2026-07-28  Leo de Moura submits fix (PR #14577)
2026-07-29  Fix available in nightly builds
2026-08-02  This advisory

--[ Credit

Bug discovery and minimal PoC:  @kiranandcode
CollatzLean exploit:            Ramana Kumar (@xrchz)
Kernel fix:                     Leonardo de Moura
Independent Docker PoC (0=1):   Jonathan Brossard (MOABI)


I wish you an excellent week end,
Thanks and regards,

j-

