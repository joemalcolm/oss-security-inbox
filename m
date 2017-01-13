X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["638" "Friday" "13" "January" "2017" "17:09:40" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1701131706000.25713@wniryva>" "22" "[oss-security] CVE-2017-2584 Kernel: kvm: use after free in complete_emulated_mmio" nil nil nil "1" "2017011311:39:40" "[oss-security] CVE-2017-2584 Kernel: kvm: use after free in complete_emulated_mmio" (number mark "U       ppandit@redh Jan 13   22/638   " thread-indent "\"[oss-security] CVE-2017-2584 Kernel: kvm: use after free in complete_emulated_mmio\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13445 invoked by uid 550); 13 Jan 2017 11:39:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13416 invoked from network); 13 Jan 2017 11:39:55 -0000
Date: Fri, 13 Jan 2017 17:09:40 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
Message-ID: <alpine.LFD.2.20.1701131706000.25713@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.74 on 10.5.11.28
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]); Fri, 13 Jan 2017 11:39:44 +0000 (UTC)
Subject: [oss-security] CVE-2017-2584 Kernel: kvm: use after free in
 complete_emulated_mmio

   Hello,

Linux kernel built with the Kernel-based Virtual Machine(CONFIG_KVM) support 
is vulnerable to a use after free flaw. It could occur on x86 platform, when 
emulating instructions fxsave, fxrstor, sgdt, etc.

A user/process could use this flaw to crash the host kernel resulting in DoS.

Upstream patch:
---------------
   -> https://www.spinics.net/lists/kvm/msg143571.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1413001

'CVE-2017-2584' is assigned to this issue by Red Hat Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
