X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4736" "Saturday" "21" "March" "2015" "11:31:27" "+0100" "Quentin Casasnovas" "quentin.casasnovas@oracle.com" "<20150321103127.GI7053@chrystal.uk.oracle.com>" "97" "[oss-security] Re: CVE Request: Linux kernel unprivileged denial-of-service due to mis-protected xsave/xrstor instructions." nil nil nil "3" "2015032110:31:27" "[oss-security] Re: CVE Request: Linux kernel unprivileged denial-of-service due to mis-protected xsave/xrstor instructions." (number mark "        quentin.casa Mar 21   97/4736  " thread-indent "\"[oss-security] Re: CVE Request: Linux kernel unprivileged denial-of-service due to mis-protected xsave/xrstor instructions.\"\n") "<20150320232512.B11316DC005@smtpvmsrv1.mitre.org>" ("<20150318101405.GA19065@chrystal.uk.oracle.com>" "<20150320232512.B11316DC005@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3264 invoked by uid 550); 21 Mar 2015 10:29:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3237 invoked from network); 21 Mar 2015 10:29:31 -0000
Message-ID: <20150321103127.GI7053@chrystal.uk.oracle.com>
References: <20150318101405.GA19065@chrystal.uk.oracle.com>
 <20150320232512.B11316DC005@smtpvmsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150320232512.B11316DC005@smtpvmsrv1.mitre.org>
User-Agent: Mutt/1.5.22 (2013-10-16)
X-Source-IP: aserv0021.oracle.com [141.146.126.233]
Cc: quentin.casasnovas@oracle.com, oss-security@lists.openwall.com,
        jamie.iles@oracle.com, mr.a.xavier@gmail.com
Date: Sat, 21 Mar 2015 11:31:27 +0100
From: Quentin Casasnovas <quentin.casasnovas@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Linux kernel unprivileged denial-of-service due to
 mis-protected xsave/xrstor instructions.
To: cve-assign@mitre.org

On Fri, Mar 20, 2015 at 07:25:12PM -0400, cve-assign@mitre.org wrote:
> > a flaw in the way the xsave/xrstor (and their alternative
> > instructions) were being protected against a fault in kernel space
> 
> We believe that this report can have at least one CVE ID for a fixed
> issue.
> 
> Does anyone have a preference for two CVE IDs divided in this way:

I would personnaly prefer only one CVE since it is really one issue,
exploitable in multiple different places where the vulnerable functions are
inlined.  See the attachment unprotected_xsave_faults on my initial mail
for an comprehensive list of those places.

> 
>   - one CVE ID for the
>     https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit?id=f31a9f7c71691569359fa7fb8b0acaa44bce0324
>     change that was introduced in 3.17. Our incomplete understanding
>     from http://openwall.com/lists/oss-security/2015/03/18/6 is that
>     this change had security-relevant value even though it was later
>     determined to be mis-protecting.

The above commit is what introduced the vulnerability.

Sorry if my initial report was not detailed enough to understand the
problem, let me try again.

We have two different mecanisms in the kernel that are involved here:

 - the alternative instructions: it allows the Linux kernel to self-modify
   its running code to use optimized instructions when they are available
   on the host CPU.  The way it works is that the initial instruction in
   .text is supported by all CPU variants and we add optimized version of
   the instruction in the .altinstr_replacement section.  At boot, or when
   loading a kernel module, the kernel will replace the instruction in
   .text by its optimized version from .altinstr_replacement if the CPU
   supports it, we can see it as something like this:

     if (cpu_has_fexture_X())
             memcpy(.text, .altinstr_replacement, sizeof(instruction));

   The CPU will never have its instruction pointer pointing in
   .altinstr_replacement, this is just used as a memory source when
   applying the alternative instructions.

 - the ex_table entries: it allows the kernel to mark addresses where a
   fault might occur but should not cause a panic.  It works by storing in
   the __ex_table section a pair of addresses, the first one being the
   address of the instruction which could fault, and the second is where
   the execution should continue when that fault happens.  On page fault in
   kernel space, the page fault handler will check if there is an ex_table
   entry corresponding to where the fault happened, and if that's the case,
   will restore the CPU context with RIP pointing to that second address.
   This is how copy_from_user() does not panic the kernel when the userland
   pointer given as argument is borked for example.

Now, the xsave instruction (or its alternatives xsaveopt and xsaves) could
fault for different reasons (unaligned memory operands, non-cannonical
address memory operand, ...), so we want to have an ex_table entry pointing
to the xsave instruction in .text so that if it faults, the kernel does not
die but simply continue its normal flaw and return an error to the caller.

The problem with the above commit is that it correctly added an ex_table
entry to prevent this, but the pointer to the instruction which might fault
was not pointing to .text but to .altinstr_replacement.  The effect is that
if userspace manages to trigger the fault on xsave (which is in .text), the
page fault handler will never find a corresponding ex_table entry and will
consider this as an unhandled fault.  The fix is to make the ex_table entry
properly point to .text and not to .altinstr_replacement so the kernel
properly handles the fault and does not die.

Hopefully that clears things up.

> 
>   - a second CVE id for the
>     https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit?id=06c8173eb92bbfc03a0fe8bb64315857d0badd06
>     change

The above commit is the fix, not a security issue.

> 
> ? Otherwise, we will assign only the latter.
> 
> https://lkml.org/lkml/2015/3/17/462 is about "This is to prevent
> future misuses of the __ex_table entry like there was for
> xsaves/xrstors." Typically, code improvements for "prevent future
> misuses" purposes would not lead to additional CVE IDs.

Agreed, these are just hardening patches so we can sanity check every
__ex_table entry at build time, making sure none of them points to a
non-executable section nor to .altinstr_replacement - as we know the kernel
will never be executing from there.  This should hopefully prevent the same
type of vulnerability being re-introduced and might uncover the same kind
of problems on other architectures.

Thanks,
Quentin
