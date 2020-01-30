X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1519" "Thursday" "30" "January" "2020" "18:16:37" "+0000" "Catalin Marinas" "catalin.marinas@arm.com" "<20200130181637.GC29347@mbp>" "37" "[oss-security] Linux kernel: arm64/KVM debug registers vulnerability" nil nil nil "1" "2020013018:16:37" "[oss-security] Linux kernel: arm64/KVM debug registers vulnerability" (number mark "U       catalin.mari Jan 30   37/1519  " thread-indent "\"[oss-security] Linux kernel: arm64/KVM debug registers vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux kernel: arm64/KVM debug registers vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13821 invoked by uid 550); 30 Jan 2020 21:06:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17841 invoked from network); 30 Jan 2020 18:16:52 -0000
Date: Thu, 30 Jan 2020 18:16:37 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: oss-security@lists.openwall.com
Message-ID: <20200130181637.GC29347@mbp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [oss-security] Linux kernel: arm64/KVM debug registers vulnerability

Hi,

A bug has been fixed in the arm64 KVM port (commit id
4942dc6638b07b5326b6d2faa142635c559e7cd5 "KVM: arm64: Write
arch.mdcr_el2 changes since last vcpu_load on VHE") which would allow a
guest to access the debug/PMU registers used by the host without being
trapped. This can only happen during the vCPU start until the first
preemption. Systems with an ARMv8.1 or later CPU are affected (with the
Virtualisation Host Extensions).

The implications are that a guest, for a brief period, may be able to
read event counters belonging to the host or potentially trigger
perf-related IRQs in the host.

A more detailed description of the fix from the commit log [1]:

    KVM: arm64: Write arch.mdcr_el2 changes since last vcpu_load on VHE

    On VHE systems arch.mdcr_el2 is written to mdcr_el2 at vcpu_load time to
    set options for self-hosted debug and the performance monitors
    extension.

    Unfortunately the value of arch.mdcr_el2 is not calculated until
    kvm_arm_setup_debug() in the run loop after the vcpu has been loaded.
    This means that the initial brief iterations of the run loop use a zero
    value of mdcr_el2 - until the vcpu is preempted. This also results in a
    delay between changes to vcpu->guest_debug taking effect.

    Fix this by writing to mdcr_el2 in kvm_arm_setup_debug() on VHE systems
    when a change to arch.mdcr_el2 has been detected.

No CVE ID has been assigned to this bug.

-- 
Catalin

[1] https://git.kernel.org/linus/4942dc6638b07b5326b6d2faa142635c559e7cd5
