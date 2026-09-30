X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/30/1
Message-ID: <4a2caa1d-7cc6-4943-89ef-053a1ffdfa07@oracle.com>
Date: Tue, 29 Sep 2026 17:41:03 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Branch Target Reuse: Practical Spectre-v2 Attacks in JIT Engines via Stale Branch Prediction Entries
Content-Type: text/plain; charset=utf-8

https://www.vusec.net/projects/btr/ was announced today:
> We present Branch Target Reuse (BTR), a new Spectre-v2 attack
> targeting just-in-time (JIT) compilers. BTR affects the JIT engines
> found in web browsers, language runtimes, and the operating system
> kernel, across multiple CPU vendors. We analyzed the attack surface of
> Linux cBPF, Oracle GraalVM and SpiderMonkey (the JIT engine of the
> Firefox browser), and built two end-to-end exploits against the Linux
> kernel.
> 
> The key insight behind the attack is that, while modern CPUs restore
> architectural code coherence after self-modification, they do not
> necessarily invalidate stale indirect branch prediction entries (i.e.,
> branch targets). In JIT engines, these stale targets can outlive the
> original code and later be reused when the code cache is repopulated,
> yielding a speculative execute-after-free primitive. This allows
> attackers to hijack speculative control flow to newly generated code
> at obsolete offsets, bypassing software hardening or reaching
> misaligned gadgets.

The paper is at: https://download.vusec.net/papers/btr_ccs26.pdf

And their PoC code: https://github.com/vusec/btr

As for mitigations:
> Linux kernel. The kernel developers upstreamed a new mitigation for
> x86 that issues an IBPB on all cores when a cBPF program reuses a
> previously executed cBPF/eBPF region, and discourages such reuse as an
> optimization. The mitigation applies whether or not IBT is
> enabled. Two CVEs were assigned:
> 
>     CVE-2026-64507 – x86/bugs: Enable IBPB flush on BPF JIT allocation
>     CVE-2026-64508 – bpf: Support for hardening against JIT spraying
> 
> Oracle. GraalVM instead hinders region reuse by randomizing JIT
> code-cache locations.
> 
> Mozilla. Mozilla considered IBPB-based mitigations, but is currently
> prioritizing the completion and deployment of site isolation.

-- 
         -Alan Coopersmith-                 alan.coopersmith@...cle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

