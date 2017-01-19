X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["925" "Thursday" "19" "January" "2017" "16:42:09" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1701191634580.5307@wniryva>" "28" "[oss-security] CVE-2017-2583 Kernel: Kvm: vmx/svm potential privilege escalation inside guest" nil nil nil "1" "2017011911:12:09" "[oss-security] CVE-2017-2583 Kernel: Kvm: vmx/svm potential privilege escalation inside guest" (number mark "U       ppandit@redh Jan 19   28/925   " thread-indent "\"[oss-security] CVE-2017-2583 Kernel: Kvm: vmx/svm potential privilege escalation inside guest\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5778 invoked by uid 550); 19 Jan 2017 11:12:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5755 invoked from network); 19 Jan 2017 11:12:27 -0000
Date: Thu, 19 Jan 2017 16:42:09 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Xiaohan Zhang <zhangxiaohan1@huawei.com>
Message-ID: <alpine.LFD.2.20.1701191634580.5307@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Thu, 19 Jan 2017 11:12:16 +0000 (UTC)
Subject: [oss-security] CVE-2017-2583 Kernel: Kvm: vmx/svm potential privilege escalation
 inside guest

   Hello,

Linux kernel built with the Kernel-based Virtual Machine(CONFIG_KVM) support 
is vulnerable an incorrect segment selector(SS) value error. It could occur 
loading values into SS register in long mode.

A user/process inside guest could use this flaw to crash the guest resulting 
in DoS or potentially escalate their privileges inside guest.

Upstream patch:
---------------
   -> https://git.kernel.org/linus/33ab91103b3415e12457e3104f0e4517ce12d0f3

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1414735

Note: On Intel CPUs it'd corrupt the guest state resulting in DoS; Whereas on
       AMD CPUs it could potentially escalate privileges inside guest.

This issue was discovered by Xiaohan Zhang of Huawei Inc.

'CVE-2017-2583' was assigned to this issue by Red Hat Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
