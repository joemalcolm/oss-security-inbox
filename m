X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["803" "Thursday" "7" "January" "2016" "16:29:15" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1601071625360.12689@wniryva>" "25" "[oss-security] CVE-2015-7513 Kernel: kvm: divide by zero issue leads to DoS" nil nil nil "1" "2016010710:59:15" "[oss-security] CVE-2015-7513 Kernel: kvm: divide by zero issue leads to DoS" (number mark "U       ppandit@redh Jan  7   25/803   " thread-indent "\"[oss-security] CVE-2015-7513 Kernel: kvm: divide by zero issue leads to DoS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17835 invoked by uid 550); 7 Jan 2016 10:59:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17817 invoked from network); 7 Jan 2016 10:59:34 -0000
Date: Thu, 7 Jan 2016 16:29:15 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
Message-ID: <alpine.LFD.2.20.1601071625360.12689@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Subject: [oss-security] CVE-2015-7513 Kernel: kvm: divide by zero issue leads to DoS

    Hello,

Linux kernel built with the KVM virtualisation support(CONFIG_KVM) is 
vulnerable to a divide by zero issue. It occurs in the KVM module's 
Programmable Interval Timer(PIT) emulation, when PIT counters for channel 1 or 
2 are set to zero(0) and a privileged user inside guest attempts to read 
those.

A privileged guest user with access to PIT I/O ports, could use this issue to 
crash the host kernel resulting in DoS.

Upstream patch:
---------------
   -> https://git.kernel.org/linus/0185604c2d82c560dab2f2933a18f797e74ab5a8

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1284847

It requires host user to set the PIT channel counters to zero(0).

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
