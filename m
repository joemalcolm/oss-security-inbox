X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["728" "Thursday" "8" "March" "2018" "23:52:33" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1803082349521.8732@wniryva>" "22" "[oss-security] CVE-2018-7550 Qemu: i386: multiboot OOB access while loading kernel image" nil nil nil "3" "2018030818:22:33" "[oss-security] CVE-2018-7550 Qemu: i386: multiboot OOB access while loading kernel image" (number mark "U       ppandit@redh Mar  8   22/728   " thread-indent "\"[oss-security] CVE-2018-7550 Qemu: i386: multiboot OOB access while loading kernel image\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18260 invoked by uid 550); 8 Mar 2018 18:22:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18241 invoked from network); 8 Mar 2018 18:22:50 -0000
Date: Thu, 8 Mar 2018 23:52:33 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Cyrille Chatras <cyrille.chatras@orange.com>
Message-ID: <nycvar.YSQ.7.76.1803082349521.8732@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Thu, 08 Mar 2018 18:22:38 +0000 (UTC)
Subject: [oss-security] CVE-2018-7550 Qemu: i386: multiboot OOB access while loading kernel
 image

   Hello,

Quick Emulator(QEMU) built with the PC System Emulator with multiboot feature 
support is vulnerable to an OOB r/w memory access issue. It could occur while 
loading a kernel image during a guest boot if multiboot head addresses 
mh_load_end_addr was greater than mh_bss_end_addr.

A user/process could use this flaw to potentially achieve arbitrary code 
execution on a host.

Upstream patch:
---------------
   -> https://lists.nongnu.org/archive/html/qemu-devel/2018-03/msg01885.html

This issue was reported by Cyrille Chatras of Orange.com.

CVE-2018-7550 assigned via -> https://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
