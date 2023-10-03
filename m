Received: (qmail 17852 invoked by uid 550); 3 Oct 2023 20:59:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17429 invoked from network); 3 Oct 2023 20:58:32 -0000
Date: Tue, 3 Oct 2023 22:58:25 +0200
From: Solar Designer <solar@openwall.com>
To: Andrew Cooper <andrew.cooper3@citrix.com>
Cc: oss-security@lists.openwall.com,
	"Xen. org security team" <security-team-members@xen.org>
Message-ID: <20231003205825.GA24992@openwall.com>
References: <E1qko5Z-0003cF-KD@xenbits.xenproject.org> <20230925163652.GA6750@openwall.com> <70e568d7-9e09-a1a9-030f-40473447a619@citrix.com> <20230925182834.GA8247@openwall.com> <3241bf87-b01b-4b65-e972-f0cede9e1855@citrix.com> <20230926160943.GA12790@openwall.com> <3df9034c-6fab-141c-ad69-ce00df0b81f9@citrix.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3df9034c-6fab-141c-ad69-ce00df0b81f9@citrix.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Xen Security Advisory 439 v1 (CVE-2023-20588) - x86/AMD: Divide speculative information leak

On Tue, Sep 26, 2023 at 06:16:22PM +0100, Andrew Cooper wrote:
> On 26/09/2023 5:09 pm, Solar Designer wrote:
> > Is the original paper public?
> 
> https://www.usenix.org/system/files/usenixsecurity23-hofmann.pdf
> 
> Section 8.2.1 for the results specific to divides.

Thank you!

> > Meanwhile, I observe a difference between Linux and Xen fixes - Linux
> > uses native-sized DIV and you use byte-sized, as a clever way not to
> > clobber RDX and maybe achieve lower latency.  Speaking of which:
> >
> > $ git clone https://github.com/InstLatx64/InstLatx64
> > $ grep -r ': DIV .* 0/' InstLatx64/AuthenticAMD/*_Zen_*.txt
> > InstLatx64/AuthenticAMD/AuthenticAMD0800F00_K17_Zen_InstLatX64.txt:Inst  409 X86   : DIV r8  0/ 8b                 L: [no true dep.]   T:   4.14ns= 13.00c
> > InstLatx64/AuthenticAMD/AuthenticAMD0800F00_K17_Zen_InstLatX64.txt:Inst  413 X86   : DIV r8  0/ 4b                 L: [no true dep.]   T:   4.13ns= 13.00c
> > InstLatx64/AuthenticAMD/AuthenticAMD0800F00_K17_Zen_InstLatX64.txt:Inst  422 X86   : DIV r16  0/16b                L: [no true dep.]   T:   4.45ns= 14.00c
> > InstLatx64/AuthenticAMD/AuthenticAMD0800F00_K17_Zen_InstLatX64.txt:Inst  426 X86   : DIV r16  0/ 8b                L: [no true dep.]   T:   4.45ns= 14.00c
> > InstLatx64/AuthenticAMD/AuthenticAMD0800F00_K17_Zen_InstLatX64.txt:Inst  435 X86   : DIV r32  0/32b                L: [no true dep.]   T:   4.45ns= 14.00c
> > InstLatx64/AuthenticAMD/AuthenticAMD0800F00_K17_Zen_InstLatX64.txt:Inst  439 X86   : DIV r32  0/16b                L: [no true dep.]   T:   4.45ns= 14.00c
> > InstLatx64/AuthenticAMD/AuthenticAMD0800F00_K17_Zen_InstLatX64.txt:Inst  449 AMD64 : DIV r64  0/64b                L: [no true dep.]   T:   4.45ns= 14.00c
> > InstLatx64/AuthenticAMD/AuthenticAMD0800F00_K17_Zen_InstLatX64.txt:Inst  453 AMD64 : DIV r64  0/32b                L: [no true dep.]   T:   4.45ns= 14.00c
> >
> > Looks like maybe not that much difference, after all, if this data applies.
> 
> Agner Fogh's manuals have a little more information, and importantly
> give the upper bound which tops out at 47 cycles.

Of course, the worst case is much worse like that.  If I'm reading this
right, the timings I found above are for dividing 0 by something, so
should apply to Linux's 0/1.  Xen does 1/1 instead:

https://github.com/xen-project/xen/commit/d7b78041dc819efde0350f27754a61cb01a93496

Luckily, the timings for 1/1 look just as good:

$ grep -r ': DIV .* 1/1' InstLatx64/AuthenticAMD/*_Zen_*.txt
InstLatx64/AuthenticAMD/AuthenticAMD0800F00_K17_Zen_InstLatX64.txt:Inst  415 X86   : DIV r8 1/1                    L:   4.14ns= 13.0c  T:   4.14ns= 13.00c
InstLatx64/AuthenticAMD/AuthenticAMD0800F00_K17_Zen_InstLatX64.txt:Inst  416 X86   : DIV r8 1/1 ax upd             L:   4.14ns= 13.0c  T:   4.14ns= 13.00c
InstLatx64/AuthenticAMD/AuthenticAMD0800F00_K17_Zen_InstLatX64.txt:Inst  427 X86   : DIV r16 1/1                   L:   4.45ns= 14.0c  T:   4.45ns= 14.00c
InstLatx64/AuthenticAMD/AuthenticAMD0800F00_K17_Zen_InstLatX64.txt:Inst  428 X86   : DIV r16 1/1 ax upd            L:   4.45ns= 14.0c  T:   4.45ns= 14.00c
InstLatx64/AuthenticAMD/AuthenticAMD0800F00_K17_Zen_InstLatX64.txt:Inst  429 X86   : DIV r16 1/1 ax/dx upd         L:   4.45ns= 14.0c  T:   4.45ns= 14.00c
InstLatx64/AuthenticAMD/AuthenticAMD0800F00_K17_Zen_InstLatX64.txt:Inst  441 X86   : DIV r32 1/1                   L:   4.45ns= 14.0c  T:   4.45ns= 14.00c
InstLatx64/AuthenticAMD/AuthenticAMD0800F00_K17_Zen_InstLatX64.txt:Inst  442 X86   : DIV r32 1/1 eax upd           L:   4.45ns= 14.0c  T:   4.45ns= 14.00c
InstLatx64/AuthenticAMD/AuthenticAMD0800F00_K17_Zen_InstLatX64.txt:Inst  443 X86   : DIV r32 1/1 eax/edx upd       L:   4.45ns= 14.0c  T:   4.45ns= 14.00c
InstLatx64/AuthenticAMD/AuthenticAMD0800F00_K17_Zen_InstLatX64.txt:Inst  455 AMD64 : DIV r64 1/1                   L:   4.45ns= 14.0c  T:   4.45ns= 14.00c
InstLatx64/AuthenticAMD/AuthenticAMD0800F00_K17_Zen_InstLatX64.txt:Inst  456 AMD64 : DIV r64 1/1 rax upd           L:   4.45ns= 14.0c  T:   4.45ns= 14.00c
InstLatx64/AuthenticAMD/AuthenticAMD0800F00_K17_Zen_InstLatX64.txt:Inst  457 AMD64 : DIV r64 1/1 rax/rdx upd       L:   4.45ns= 14.0c  T:   4.45ns= 14.00c

> There is at least a 1 cycle change in latency between the byte and
> non-byte forms, which I suspect is down to the non-byte forms needing to
> consume an extra input register before starting.

Makes sense.

> But the main reason for choosing the byte form is indeed fewer moving
> parts to worry about in the critical sections, where one wrong
> instruction can render all protections moot.

Right.  Great not to clobber RDX.

However, this may be another reason to actually look into whether the
remainder also leaked, and whether the byte-sized form prevents that
leak despite of it not touching the architectural register where the
remainder would be stored by a preceding larger DIV.  I expect that
we're fine here - it's the divider unit's internal register and not the
architectural register that should matter - but worth making sure.  It
could also theoretically be e.g. some buffer registers in the middle,
where the byte-sized form wouldn't overwrite the full contents.

Alexander
