X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["800" "Friday" "23" "June" "2017" "19:48:13" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1706231946010.19155@wniryva>" "27" "[oss-security] CVE-2017-7518 Kernel: KVM: debug exception via syscall emulation" nil nil nil "6" "2017062314:18:13" "[oss-security] CVE-2017-7518 Kernel: KVM: debug exception via syscall emulation" (number mark "U       ppandit@redh Jun 23   27/800   " thread-indent "\"[oss-security] CVE-2017-7518 Kernel: KVM: debug exception via syscall emulation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23662 invoked by uid 550); 23 Jun 2017 14:18:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23638 invoked from network); 23 Jun 2017 14:18:29 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com D0E1E40F14
Authentication-Results: ext-mx06.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx06.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=ppandit@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com D0E1E40F14
Date: Fri, 23 Jun 2017 19:48:13 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
Message-ID: <alpine.LFD.2.20.1706231946010.19155@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]); Fri, 23 Jun 2017 14:18:18 +0000 (UTC)
Subject: [oss-security] CVE-2017-7518 Kernel: KVM: debug exception via syscall emulation

    Hello,

Linux kernel built with the Kernel-based Virtual Machine(CONFIG_KVM) support 
is vulnerable to an incorrect debug exception(#DB) error. It could occur while 
emulating a syscall instruction.

A user/process inside guest could use this flaw to potentially escalate their 
privileges inside guest.

Note: Linux guests are not affected.

Upstream patch:
---------------
   -> https://www.spinics.net/lists/kvm/msg151817.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1464473
   -> https://www.spinics.net/lists/kvm/msg151819.html
   -> https://xenbits.xen.org/xsa/advisory-204.html

'CVE-2017-7518' has been assigned to this issue by Red Hat Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
