Received: (qmail 9419 invoked by uid 550); 15 Jan 2026 16:39:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21865 invoked from network); 15 Jan 2026 08:29:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=pi3.com.pl; s=default;
	t=1768465750; bh=JcAHv7RaBb6ICZ+uYcrm1UgyVQU/vuYoZ/LVEkDzXyM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fecX1TrYh3h22ngMtUmk4i9F12Q62qS3i7o2sZGtYpWY+NtcfyH4NQotig7TIXJkJ
	 KLxxX1LI4uJ4aQQ4grSi6ptJx5Rc9JzYvP3CWabeBTMpHo5JHsjexB5UC7sFMmtd9D
	 RwvaSEJlTPZt6N4fulpg61MVid0PNBu/BHNo3P8VTd/2A4ZgWTqpUE2Yb5jMRpnlmZ
	 g8A5KL8iwgLP1EnsaeXieVksjjKRa+7YvzzJ4EW96qhtwSlJn1o8wN3EMCfREqq3nk
	 SN3S4UCPgepaYC79i7F7XJk5WY3mnXtKqnv5aEGFo7vpIy8PUbKtftNGTszZuVVdh+
	 4kW6OTmJAH88g==
X-Virus-Scanned: Debian amavisd-new at pi3.com.pl
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=pi3.com.pl; s=default;
	t=1768465747; bh=JcAHv7RaBb6ICZ+uYcrm1UgyVQU/vuYoZ/LVEkDzXyM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Eh+qGgDPBucWu0725uWjJs/lJZRiRfh59AKRI7kncpFITbakamiW9LS9u232gdrnX
	 akQAaMAjK/QJaoFzlzjnEx1R92+BBbVSJO/2WuA4YddLVN3wit9Kqv9y7QQXpqFgeg
	 8m9Uv6KutOeOz7zmPaNcxLYDwuvwGnPaBNnxUerDiXAKrb4cDbvOuH6II9WKS2J1k0
	 d6RGebA2IJOzRHjs/iY2S2zaRalace42q5RgXkOuaKjyd2dt+pU8f4+1poTr0oGQch
	 ebIoYh6LO+xVzEeuQH8iq1DZ2mzTcMsoojhmP0C0oCylls3QNc2XzpKvShbBWRjh2f
	 8dmy6LeXhggpw==
Date: Thu, 15 Jan 2026 09:29:07 +0100
From: Adam Zabrocki <pi3@pi3.com.pl>
To: oss-security@lists.openwall.com
Cc: Solar Designer <solar@openwall.com>
Message-ID: <aWilU81fLhCbVn/W@pi3.com.pl>
References: <csi5RfKTpfkBN0IaWsbQqs8EuuE_i4k1bUK1bdqGu4HkTKazVuo1iSGK_d5--blDgnaI_r2AMnndDYFAbtrdJaethNnJF8DQgNqF3q5Ydyk=@hexsys.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <csi5RfKTpfkBN0IaWsbQqs8EuuE_i4k1bUK1bdqGu4HkTKazVuo1iSGK_d5--blDgnaI_r2AMnndDYFAbtrdJaethNnJF8DQgNqF3q5Ydyk=@hexsys.org>
Subject: Re: [oss-security] The Curious Case of Stack Pivot Detection

Hello,

Thanks for the summary of your experiments. Since LKRG was referenced, I wanted
to clarify what LKRG's pCFI is actually trying to protect and how it relates to
your observations.

It looks like that you are mostly talking about user-mode stack protection
rather than kernel mode. LKRG does not attempt to enforce a "valid user stack"
policy for user-mode processes/threads. As you observed, user-space stacks are
often runtime-managed and can legitimately move in ways that make a strict
policy noisy. Instead, LKRG's pCFI targets kernel-mode control-flow abuse and
validates kernel stacks only. I'm not aware of any user-mode like stack
variations in kernel mode stacks.

In LKRG terminology, pCFI ("poor man’s CFI") has two validation levels, exposed
via lkrg.pcfi_validate:
 - pcfi_validate=0: disables pCFI.
 - pcfi_validate=1: validate the kernel stack pointer - this is exactly what you
                    described as "a 4-year-old can come up with it".
 - pcfi_validate=2: LKRG performs a full stack walk and verifies
   that every return address on the stack points to a valid kernel instruction
   in a legitimate code section (.text) and not to the unexpected data area.

Note: We actually see other projects directly copying both ideas to their
projects (some of them literally copying 1:1 logic).

On x86 specifically, whether "validate all stack frames" is possible/robust
depends on the kernel's unwinder configuration. Kernels typically use either
frame pointers (CONFIG_FRAME_POINTER) or ORC unwinding (CONFIG_UNWINDER_ORC);
ORC provides reliable unwinding without requiring frame pointers. In practice,
some distros prefer to keep frame pointer instead of ORC (usually some LTS) but
ORC (then FP is usually disabled) become more popular.

Regarding your question about binaries compiled with -fomit-frame-pointer (and
the FP register being reused): when the kernel is built without frame pointers,
LKRG does not treat the FP register as a trustworthy frame chain. In that case,
frame-level validation relies on the kernel's unwinder support (e.g., ORC on
x86) rather than on FP.

Thanks again for the detailed analysis — I agree this whole problem looks very
different (and much harder) on the user-space side than it does for kernel
stacks.

Thanks,
Adam

On Sat, Jan 10, 2026 at 06:54:39PM +0000, Ali Polatel wrote:
> Dear kind people,
> 
> I hope you're fine and healthy. The reason I am writing this mail is to share
> a few of my experiments and research I've done to come up with a reasonable
> stack pivot detection for the Syd kernel. TL;DR I have failed and I have learned
> a lot. I have also learned everyone is doing various levels of wrong and I have
> yet to come up with a "correct" solution. Are we doing it wrong or are we attacking
> the wrong link? Please discuss.
> 
> The obvious idea is to check if stack pointer points to a valid stack region at
> various boundaries. This solution is so obvious you'd imagine even a 4-year-old
> can come up with it, yet G**gle has a patent[1] on it. Curious (mis)use of software
> patents where an entity patents the equation "foo < bar < baz". What do we do if
> they go one step ahead and patent "<"? Use emoji for maths? Move to Mars?
> 
> Anyhow, this is not what I am here to discuss. OpenBSD does something similar
> with MAP_STACK[2] and Windows 8 had a similar mitigation until someone demonstrated
> a trivial bypass[3]. Finding out this bypass was an important step forward for me so
> I went ahead and rewrote it[4] for UNIX and verified it bypasses what Syd had
> at the time and what OpenBSD has. This bypass is a simple improvement of what
> OpenBSD regression tests have and involves a quick jumpback to the stack. Funnily
> if you remove the printf in the intermediate stage of the bypass OpenBSD's SP check
> at write(2) boundary will catch and kill you so keep it quiet as you bypass this
> delicate mitigation ;).
> 
> Another roadblock for the SP points to a stack region detection is in userspace
> there's no clear definition of "stack". The stack of the main thread is handled by
> the kernel where everything is fine but thread stacks are typically your language
> runtime's business. As an example if you check the stack of a Go thread on Linux,
> you'll most probably find the VMA is named " Go: heap". It may be the stack for now,
> but maybe it was not a bit ago or won't be a bit later. Asking Go devs to use
> MAP_STACK would probably be rejected because it breaks the whole model of how they
> do multithreading...
> 
> I digged a bit deeper and found what I thought was an improvement at the time.
> Why not check the frame pointer instead of the stack pointer? Why not both?
> It was fairly easy to patch Syd for this so I got to testing. This way of detection
> is imho more reliable and less prone to bypassing however there's a big issue.
> Both gcc and clang imply -fomit-frame-pointer with -O2 so you'll have a hard time
> finding a binary in the wild these days that has frame pointers. If I were OpenBSD,
> I'd compile the world with -fno-omit-frame-pointer and move on with my life and I'd
> humbly and kindly recommend them to do that in short of any better ideas.
> 
> Now, my tests showed me another problem. Stack pivotting is not as unusual and as
> malicious as you think. In fact, various programs make use of it in arguably weird
> ways to achieve their goals. One example is Firefox's crashhelper, bash, gawk, ceph,
> ... I can easily come up with dozens more if I enable this mitigation and build Exherbo
> packages under Syd as we proudly enable package testing by default. So even if you'd come
> up with a reliable, efficient way to detect stack pivot, you're gonna have loads of false
> positives to manage. Good luck.
> 
> Finally, after I ended my experiments and reverted[5] Syd's stack pivot detection. I
> came across LKRG's README[6] incidentally which mentions validating the stack pointer
> with "pCFI", their version of coarse-grained CFI, which also seems to check the
> frame pointer[7] against the stack. I'd be curious to know whether there's any added
> mechanism to detect stack pivot when the binary is compiled without frame pointers when
> the frame pointer is reused by compiler for different purposes.
> 
> Best regards,
> Ali Polatel
> 
> [1]: https://patents.google.com/patent/US10853480B2/en
> [2]: https://isopenbsdsecu.re/mitigations/map_stack/
> [3]: https://archive.ph/xS2Fl#selection-13.0-243.52
> [4]: https://gitlab.exherbo.org/sydbox/sydbox/-/blob/main/dev/stackpivot-jumpback-bypass.c
> [5]: https://gitlab.exherbo.org/sydbox/sydbox/-/commit/f03db6c677ddf5dbf87adeb6bd5efb0677869104
> [6]: https://github.com/lkrg-org/lkrg/blob/b8b1418a6c1e7229cdf3dfa020fcc4945e108d83/README#L505
> [7]: https://github.com/lkrg-org/lkrg/blob/b8b1418a6c1e7229cdf3dfa020fcc4945e108d83/src/modules/exploit_detection/p_exploit_detection.c#L1585-L1591





-- 
pi3 (pi3ki31ny) - pi3 (at) itsec pl
http://pi3.com.pl

