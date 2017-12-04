X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["515" "Monday" "4" "December" "2017" "16:47:06" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1712041645550.20983@wniryva>" "17" "[oss-security] CVE-2017-1000407 Kernel: KVM: DoS via write flood to I/O port 0x80" nil nil nil "12" "2017120411:17:06" "[oss-security] CVE-2017-1000407 Kernel: KVM: DoS via write flood to I/O port 0x80" (number mark "U       ppandit@redh Dec  4   17/515   " thread-indent "\"[oss-security] CVE-2017-1000407 Kernel: KVM: DoS via write flood to I/O port 0x80\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30310 invoked by uid 550); 4 Dec 2017 11:17:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30286 invoked from network); 4 Dec 2017 11:17:23 -0000
Date: Mon, 4 Dec 2017 16:47:06 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
Message-ID: <nycvar.YSQ.7.76.1712041645550.20983@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Mon, 04 Dec 2017 11:17:11 +0000 (UTC)
Subject: [oss-security] CVE-2017-1000407 Kernel: KVM: DoS via write flood to I/O port 0x80

   Hello,

Linux kernel built with the KVM virtualization(CONFIG_KVM) support for the 
Intel processor family(CONFIG_KVM_INTEL), is vulnerable to a DoS issue. It 
could occur if a guest was to flood the I/O port 0x80 with write requests.

A guest user could use this flaw to crash the host kernel resulting in DoS.

Upstream patch
--------------
   -> https://www.spinics.net/lists/kvm/msg159809.html


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
