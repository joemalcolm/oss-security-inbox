X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1158" "Tuesday" "2" "October" "2018" "17:07:14" "+0100" "Will Deacon" "will.deacon@arm.com" "<20181002160713.GE23872@arm.com>" "34" "[oss-security] arm64 Linux kernel: Privilege escalation by taking control of the KVM hypervisor" "^Cc:" nil nil "10" "2018100216:07:14" "[oss-security] arm64 Linux kernel: Privilege escalation by taking control of the KVM hypervisor" (number mark "        will.deacon@ Oct  2   34/1158  " thread-indent "\"[oss-security] arm64 Linux kernel: Privilege escalation by taking control of the KVM hypervisor\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11397 invoked by uid 550); 2 Oct 2018 16:15:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5595 invoked from network); 2 Oct 2018 16:07:02 -0000
Message-ID: <20181002160713.GE23872@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: marc.zyngier@arm.com
Date: Tue, 2 Oct 2018 17:07:14 +0100
From: Will Deacon <will.deacon@arm.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] arm64 Linux kernel: Privilege escalation by taking control of the
 KVM hypervisor
To: oss-security@lists.openwall.com

Hi all,

Whilst reviewing some proposed arm64 KVM changes, it became apparent that
the sanity checking for the KVM_SET_ON_REG ioctl() on arm64 does not
correctly handle a number of cases:

	- Unaligned register accesses and accesses that span multiple
	  registers can bypass PSTATE sanity checking

	- The PSTATE sanity checking fails to take into account the
	  capabilities of the physical CPU, or the configuration of
	  the virtual CPU

This allows an attacker with permission to create KVM-based virtual machines
to both panic the hypervisor by triggering an illegal exception return
(resulting in a DoS) and to redirect execution elsewhere within the
hypervisor with full register control, instead of causing a return to the
guest.

This has been fixed by upstream commits:

d26c25a9d19b ("arm64: KVM: Tighten guest core register access from userspace")
2a3f93459d68 ("arm64: KVM: Sanitize PSTATE.M when being set from userspace")

which are being backported and applied to all active -stable kernels.

32-bit Arm is unaffected by this issue.

There has not yet been a CVE requested for this (mainly because I don't know
how to do it).

Thanks,

Will
