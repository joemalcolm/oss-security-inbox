X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["587" "Thursday" "1" "December" "2016" "15:48:05" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1612011545500.26855@wniryva>" "20" "[oss-security] CVE request: Kernel: kvm: stack memory information leakage" nil nil nil "12" "2016120110:18:05" "[oss-security] CVE request: Kernel: kvm: stack memory information leakage" (number mark "U       ppandit@redh Dec  1   20/587   " thread-indent "\"[oss-security] CVE request: Kernel: kvm: stack memory information leakage\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3850 invoked by uid 550); 1 Dec 2016 10:18:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3820 invoked from network); 1 Dec 2016 10:18:21 -0000
Date: Thu, 1 Dec 2016 15:48:05 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
Message-ID: <alpine.LFD.2.20.1612011545500.26855@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.26]); Thu, 01 Dec 2016 10:18:09 +0000 (UTC)
Subject: [oss-security] CVE request: Kernel: kvm: stack memory information leakage

   Hello,

Linux kernel built with the Kernel-based Virtual Machine(CONFIG_KVM) support 
is vulnerable to an information leakage issue. It could occur on x86 platform, 
in 32bit mode, while emulating instructions.

A user/process could use this flaw to leak host kernel memory bytes.

Upstream patch:
---------------
   -> https://git.kernel.org/linus/2117d5398c81554fbf803f5fd1dc55eb78216c0c

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1400468

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
