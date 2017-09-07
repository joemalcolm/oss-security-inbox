X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["698" "Thursday" "7" "September" "2017" "15:43:37" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1709071533330.14257@wniryva>" "23" "[oss-security] CVE-2017-14167 Qemu: i386: multiboot OOB access while loading guest kernel image" nil nil nil "9" "2017090710:13:37" "[oss-security] CVE-2017-14167 Qemu: i386: multiboot OOB access while loading guest kernel image" (number mark "U       ppandit@redh Sep  7   23/698   " thread-indent "\"[oss-security] CVE-2017-14167 Qemu: i386: multiboot OOB access while loading guest kernel image\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26451 invoked by uid 550); 7 Sep 2017 10:13:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26427 invoked from network); 7 Sep 2017 10:13:54 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 88DC3838
Authentication-Results: ext-mx05.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx05.extmail.prod.ext.phx2.redhat.com; spf=fail smtp.mailfrom=ppandit@redhat.com
Date: Thu, 7 Sep 2017 15:43:37 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Thomas Garnier <thgarnie@google.com>
Message-ID: <nycvar.YSQ.7.76.1709071533330.14257@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]); Thu, 07 Sep 2017 10:13:42 +0000 (UTC)
Subject: [oss-security] CVE-2017-14167 Qemu: i386: multiboot OOB access while loading guest
 kernel image

   Hello,

Quick Emulator(Qemu) built with the PC System Emulator with multiboot feature 
support is vulnerable to an OOB r/w memory access issue. It could occur due to 
an integer overflow while loading a kernel image during a guest boot.

A user/process could use this flaw to potentially achieve arbitrary code 
execution on a host.

Upstream patch:
---------------
   -> https://lists.nongnu.org/archive/html/qemu-devel/2017-09/msg01483.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1489375

This issue was reported by Thomas Garnier of Google.com.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
