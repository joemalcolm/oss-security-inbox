Received: (qmail 3942 invoked by uid 550); 7 Jan 2025 22:04:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3644 invoked from network); 7 Jan 2025 22:04:05 -0000
Date: Tue, 7 Jan 2025 23:04:00 +0100
From: Solar Designer <solar@openwall.com>
To: Linfeng Sun <slf@hdu.edu.cn>
Cc: oss-security@lists.openwall.com
Message-ID: <20250107220400.GA14382@openwall.com>
References: <ALcAqQAMIghdG5uEpB93rap6.1.1736154109674.Hmail.241270009@hdu.edu.cn>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ALcAqQAMIghdG5uEpB93rap6.1.1736154109674.Hmail.241270009@hdu.edu.cn>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Linux: general protection fault in __vmx_vcpu_run with nested virtualization

Hi,

Thank you very much for bringing this to oss-security (as it also was on
linux-distros).

On Mon, Jan 06, 2025 at 05:01:49PM +0800, Linfeng Sun wrote:
> A bug has been detected in the Linux kernel's nested virtualization implementation, which 
> can lead to a general protection fault in __vmx_vcpu_run when running a higher 
> version L1 hypervisor kernel on an L0 host kernel version predating the following 
> commit: https://github.com/torvalds/linux/commit/45779be5ced626db836e612e0dc638a1601abcf2

I assume you identified this commit by bisecting?

Do you know / can explain how your PoC triggers this bug?  Where does
the POP SS instruction come from?

Also, in another message (not CC'ed to you) Demi Marie Obenour asked:
"Is this exploitable for anything other than denial of service?"

The corresponding mainline commit is:

commit 6aa5c47c351b22c21205c87977c84809cd015fcf
Author: Michal Luczaj <mhal@rbox.co>
Date:   Mon Aug 22 00:06:47 2022 +0200

    KVM: x86/emulator: Fix handing of POP SS to correctly set interruptibility

    The emulator checks the wrong variable while setting the CPU
    interruptibility state, the target segment is embedded in the instruction
    opcode, not the ModR/M register.  Fix the condition.

    Signed-off-by: Michal Luczaj <mhal@rbox.co>
    Fixes: a5457e7bcf9a ("KVM: emulate: POP SS triggers a MOV SS shadow too")
    Cc: stable@vger.kernel.org
    Link: https://lore.kernel.org/all/20220821215900.1419215-1-mhal@rbox.co
    Signed-off-by: Sean Christopherson <seanjc@google.com>

diff --git a/arch/x86/kvm/emulate.c b/arch/x86/kvm/emulate.c
index f092c54d1a2f..08dbcff4045a 100644
--- a/arch/x86/kvm/emulate.c
+++ b/arch/x86/kvm/emulate.c
@@ -1953,7 +1953,7 @@ static int em_pop_sreg(struct x86_emulate_ctxt *ctxt)
        if (rc != X86EMUL_CONTINUE)
                return rc;
 
-       if (ctxt->modrm_reg == VCPU_SREG_SS)
+       if (seg == VCPU_SREG_SS)
                ctxt->interruptibility = KVM_X86_SHADOW_INT_MOV_SS;
        if (ctxt->op_bytes > 2)
                rsp_increment(ctxt, ctxt->op_bytes - 2);

Alexander
