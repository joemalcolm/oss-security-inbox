X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["826" "Thursday" "28" "July" "2016" "17:00:39" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1607281651320.26930@wniryva>" "25" "[oss-security] CVE-2016-5412 Kernel: powerpc: kvm: Infinite loop via H_CEDE hypercall when running under hypervisor-mode" nil nil nil "7" "2016072811:30:39" "[oss-security] CVE-2016-5412 Kernel: powerpc: kvm: Infinite loop via H_CEDE hypercall when running under hypervisor-mode" (number mark "U       ppandit@redh Jul 28   25/826   " thread-indent "\"[oss-security] CVE-2016-5412 Kernel: powerpc: kvm: Infinite loop via H_CEDE hypercall when running under hypervisor-mode\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21506 invoked by uid 550); 28 Jul 2016 11:30:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20461 invoked from network); 28 Jul 2016 11:30:56 -0000
Date: Thu, 28 Jul 2016 17:00:39 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: paulus@au1.ibm.com, David Gibson <dgibson@redhat.com>
Message-ID: <alpine.LFD.2.20.1607281651320.26930@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]); Thu, 28 Jul 2016 11:30:44 +0000 (UTC)
Subject: [oss-security] CVE-2016-5412 Kernel: powerpc: kvm: Infinite loop via H_CEDE hypercall
 when running under hypervisor-mode

   Hello,

Linux kernel built with for the PowerPC platform with KVM Virtualisation with 
hypervisor-mode support(CONFIG_KVM_BOOK3S_64_HV) enabled is vulnerable to a 
DoS issue. It could occur if a guest kernel running under hypervisor-mode KVM 
(i.e. "HV KVM" rather than "PR KVM"), does the H_CEDE hypercall while a 
suspended transaction exists, the host CPU may, under certain circumstances, 
hang in an infinite loop with interrupts disabled.

A user/process inside guest could use this flaw to crash the host kernel 
resulting in DoS.

Upstream patches:
-----------------
   -> https://marc.info/?l=kvm&m=146968629127349&w=2

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1349916


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
