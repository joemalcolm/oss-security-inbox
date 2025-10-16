Received: (qmail 14132 invoked by uid 550); 16 Oct 2025 22:21:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 10137 invoked from network); 16 Oct 2025 22:20:39 -0000
Date: Fri, 17 Oct 2025 00:18:33 +0200
From: Solar Designer <solar@openwall.com>
To: =?utf-8?B?6K645L2z5Yev?= <xujiakai24@mails.ucas.ac.cn>
Cc: oss-security@lists.openwall.com, paul.walmsley@sifive.com,
	palmer@dabbelt.com, aou@eecs.berkeley.edu
Message-ID: <20251016221833.GA17158@openwall.com>
References: <3f3512fc.14dd5.199d20784f7.Coremail.xujiakai24@mails.ucas.ac.cn> <13a4b070.14de8.199d2085ff4.Coremail.xujiakai24@mails.ucas.ac.cn>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <13a4b070.14de8.199d2085ff4.Coremail.xujiakai24@mails.ucas.ac.cn>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Linux kernel: KASAN: out-of-bounds Read in proc_pid_stack on RISC-V

Hi,

I was hoping someone would reply on the list, but since no one did let
me do that.

I hope the report was well-intentioned, but:

This is one of those cases where someone finds something with KAsan and
fuzzing and somehow starts treating it as a vulnerability worthy of
coordination, whereas it's not fundamentally different from many other
issues being found by syzbot all the time and not receiving similar
treatment.  This inconsistency wastes everyone's time.

I mean, with proper manual analysis to confirm the issue is a
vulnerability and an important one, sure, the manual handling would be
justified.  But almost none of this kind of reports have such analysis.
I admit there was at least an attempt at analysis here.  Was it manual
or AI?

As we see from the headers, this message was also sent to the kernel
security team and "RISC-V ARCHITECTURE" maintainers per the MAINTAINERS
file, including the mailing list.  This looks right.  I do not see it
actually appear in linux-riscv web archives, though - was spam-filtered?

Separately, it was also attempted to be sent to the linux-distros list
(at the same time as to oss-security), which would be inappropriate per
our published instructions (which ask to notify the kernel security team
first, or to make the issue public).  Luckily, it didn't get through
because it was missing the [vs] anti-spam tag (or maybe "I've seen the
instructions" tag), so we don't need to waste time tracking it there.

Further comments inline:

On Sat, Oct 11, 2025 at 02:49:48PM +0800, 许佳凯 wrote:
> Dear Linux Kernel Security Team and Maintainers,
> We would like to report a security vulnerability in the Linux kernel, identified as a KASAN out-of-bounds read, which we discovered through fuzz testing.

It is at the very least premature to call it a security vulnerability.
It may be a DoS on kernels built with KAsan, but production kernels are
not supposed to use KAsan.  An out-of-bounds read on its own is not
necessarily a vulnerability, although indeed many (but not all) of them
are (infoleak or DoS).  And in this case there's the additional
possibility of it being a KAsan false positive, see below.

> 1. Affected Version
> The bug was successfully reproduced on the upstream Linux kernel version 6.16, specifically at commit 038d61fd642278bab63ee8ef722c50d10ab01e8f.
> 
> 2. Build Configuration
> The kernel was built with the accompanying configuration file (see attachment: .config), which includes the necessary KASAN options to detect this issue.
> 
> 3. Proof of Concept and Reproduction
> We have provided a reliable C reproducer program (repro.cprog attached) to trigger this bug. Additional diagnostic information, including full kernel logs and system context, can be found in the attached files log0, report0, and machineInfo0.
> The vulnerability is triggered by the following sequence of system calls:
> r0 = syz_open_procfs(0x0, &(0x7f0000000000)='stack\x00');
> read(r0, &(0x7f0000000040)=""/5, 0x5); // (async)
> setsockopt$MRT_INIT(r0, 0x0, 0xc8, 0x0, 0x0);
> 
> 4. Root Cause Analysis
> The core issue is a race condition that corrupts kernel state. The bug occurs when one thread initiates a kernel stack walk by reading the /proc/self/stackfile, while a second thread concurrently issues a setsockopt() system call with the MRT_INIT command on the same file descriptor. This setsockopt operation is invalid for a proc filesystem file descriptor and inadvertently corrupts internal kernel data structures associated with it. This corruption causes the first thread's subsequent stack frame traversal (walk_stackframe) to compute an invalid memory address, resulting in an out-of-bounds read that is caught by KASAN.

As Brad Spengler pointed out in:

https://x.com/spendergrsec/status/1977104613389353134

> Isn't this oss-sec report just a risc-v instance of the same kind of FP
> fixed in 84936118bdf37bda513d4a361c38181a216427e0?
> 
> Analysis goes wrong at "and inadvertently corrupts", the setsockopt will
> bail out early exactly because it's not a socket (via sock_from_file()).
> The MRT_INIT is a red herring, the code wouldn't even reach the handler,
> address is in-bounds of the stack.

The referenced commit is:

commit 84936118bdf37bda513d4a361c38181a216427e0
Author: Josh Poimboeuf <jpoimboe@kernel.org>
Date:   Mon Jan 9 12:00:23 2017 -0600

    x86/unwind: Disable KASAN checks for non-current tasks
    
    There are a handful of callers to save_stack_trace_tsk() and
    show_stack() which try to unwind the stack of a task other than current.
    In such cases, it's remotely possible that the task is running on one
    CPU while the unwinder is reading its stack from another CPU, causing
    the unwinder to see stack corruption.
    
    These cases seem to be mostly harmless.  The unwinder has checks which
    prevent it from following bad pointers beyond the bounds of the stack.
    So it's not really a bug as long as the caller understands that
    unwinding another task will not always succeed.
    
    In such cases, it's possible that the unwinder may read a KASAN-poisoned
    region of the stack.  Account for that by using READ_ONCE_NOCHECK() when
    reading the stack of another task.
    
    Use READ_ONCE() when reading the stack of the current task, since KASAN
    warnings can still be useful for finding bugs in that case.
    
    Reported-by: Dmitry Vyukov <dvyukov@google.com>
    Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
    Cc: Andy Lutomirski <luto@amacapital.net>
    Cc: Andy Lutomirski <luto@kernel.org>
    Cc: Borislav Petkov <bp@alien8.de>
    Cc: Brian Gerst <brgerst@gmail.com>
    Cc: Dave Jones <davej@codemonkey.org.uk>
    Cc: Denys Vlasenko <dvlasenk@redhat.com>
    Cc: H. Peter Anvin <hpa@zytor.com>
    Cc: Linus Torvalds <torvalds@linux-foundation.org>
    Cc: Miroslav Benes <mbenes@suse.cz>
    Cc: Peter Zijlstra <peterz@infradead.org>
    Cc: Thomas Gleixner <tglx@linutronix.de>
    Link: http://lkml.kernel.org/r/4c575eb288ba9f73d498dfe0acde2f58674598f1.1483978430.git.jpoimboe@redhat.com
    Signed-off-by: Ingo Molnar <mingo@kernel.org>

So this may be a real KAsan compatibility issue in the code, so worthy
of bringing to the maintainers and the linux-riscv list (try again?),
but probably not a vulnerability.

Alexander

P.S. The Subject line on this originally lacked "Linux kernel" - I had
added it prior to approving the original message (as a moderator).  The
oss-security list is not limited to Linux, and we ask that the affected
project name (when applicable) be in the Subject, please.
