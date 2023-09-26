Received: (qmail 26612 invoked by uid 550); 26 Sep 2023 16:11:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25984 invoked from network); 26 Sep 2023 16:09:57 -0000
Date: Tue, 26 Sep 2023 18:09:43 +0200
From: Solar Designer <solar@openwall.com>
To: Andrew Cooper <andrew.cooper3@citrix.com>
Cc: oss-security@lists.openwall.com,
	"Xen. org security team" <security-team-members@xen.org>
Message-ID: <20230926160943.GA12790@openwall.com>
References: <E1qko5Z-0003cF-KD@xenbits.xenproject.org> <20230925163652.GA6750@openwall.com> <70e568d7-9e09-a1a9-030f-40473447a619@citrix.com> <20230925182834.GA8247@openwall.com> <3241bf87-b01b-4b65-e972-f0cede9e1855@citrix.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=koi8-r
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3241bf87-b01b-4b65-e972-f0cede9e1855@citrix.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Xen Security Advisory 439 v1 (CVE-2023-20588) - x86/AMD: Divide speculative information leak

On Tue, Sep 26, 2023 at 01:15:55AM +0100, Andrew Cooper wrote:
> On 25/09/2023 7:28 pm, Solar Designer wrote:
> > Maybe directly probing for the bug is an option?  Perhaps can be done
> > within one thread (where the bug doesn't have security impact, but is
> > detectable anyway, no)?
> 
> Unfortunately, direct probing is usually the wrong thing to rely on.
> 
> Under virt, one common scenario is that you boot on one system, then get
> migrated to a different one.š Obviously, it's up to the hypervisor to
> ensure that the architectural feature still match, but the
> microarchitecture really does change.
> 
> If you probe at boot and positively identify an issue to work around,
> great.š But as a VM you may not get a heads up that you changed
> microarchitecture, and even if you do, you don't rescan for everything
> you ran at boot.
> 
> The CPUID bits allow microarchitectural details to be expressed as
> architectural, and allow a hypervisor to state "here or someone you
> might move to, the following safety property does not hold."

I was thinking re-probing after possible VM migration, just like you
would presumably retest a CPUID bit.  However, in this case probing can
lead to false negatives if the other thread issues a DIV too or an
unexpected context switch occurs.

> > Do you know if only the quotient leaks, or also the remainder?  In the
> > below, I assume the remainder leaks as well.
> 
> I'm afraid I don't know.  The original paper says just the quotient, but
> it also says there are no leaks across privilege boundaries.

Is the original paper public?

Meanwhile, I observe a difference between Linux and Xen fixes - Linux
uses native-sized DIV and you use byte-sized, as a clever way not to
clobber RDX and maybe achieve lower latency.  Speaking of which:

$ git clone https://github.com/InstLatx64/InstLatx64
$ grep -r ': DIV .* 0/' InstLatx64/AuthenticAMD/*_Zen_*.txt
InstLatx64/AuthenticAMD/AuthenticAMD0800F00_K17_Zen_InstLatX64.txt:Inst  409 X86   : DIV r8  0/ 8b                 L: [no true dep.]   T:   4.14ns= 13.00c
InstLatx64/AuthenticAMD/AuthenticAMD0800F00_K17_Zen_InstLatX64.txt:Inst  413 X86   : DIV r8  0/ 4b                 L: [no true dep.]   T:   4.13ns= 13.00c
InstLatx64/AuthenticAMD/AuthenticAMD0800F00_K17_Zen_InstLatX64.txt:Inst  422 X86   : DIV r16  0/16b                L: [no true dep.]   T:   4.45ns= 14.00c
InstLatx64/AuthenticAMD/AuthenticAMD0800F00_K17_Zen_InstLatX64.txt:Inst  426 X86   : DIV r16  0/ 8b                L: [no true dep.]   T:   4.45ns= 14.00c
InstLatx64/AuthenticAMD/AuthenticAMD0800F00_K17_Zen_InstLatX64.txt:Inst  435 X86   : DIV r32  0/32b                L: [no true dep.]   T:   4.45ns= 14.00c
InstLatx64/AuthenticAMD/AuthenticAMD0800F00_K17_Zen_InstLatX64.txt:Inst  439 X86   : DIV r32  0/16b                L: [no true dep.]   T:   4.45ns= 14.00c
InstLatx64/AuthenticAMD/AuthenticAMD0800F00_K17_Zen_InstLatX64.txt:Inst  449 AMD64 : DIV r64  0/64b                L: [no true dep.]   T:   4.45ns= 14.00c
InstLatx64/AuthenticAMD/AuthenticAMD0800F00_K17_Zen_InstLatX64.txt:Inst  453 AMD64 : DIV r64  0/32b                L: [no true dep.]   T:   4.45ns= 14.00c

Looks like maybe not that much difference, after all, if this data applies.

Thank you for sharing so much detail and thoughts on this, Andrew!

Alexander
