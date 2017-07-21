X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["799" "Friday" "21" "July" "2017" "16:43:30" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1707211639130.27610@wniryva>" "27" "[oss-security] CVE-2017-7539 Qemu: qemu-nbd crashes due to undefined I/O coroutine" nil nil nil "7" "2017072111:13:30" "[oss-security] CVE-2017-7539 Qemu: qemu-nbd crashes due to undefined I/O coroutine" (number mark "U       ppandit@redh Jul 21   27/799   " thread-indent "\"[oss-security] CVE-2017-7539 Qemu: qemu-nbd crashes due to undefined I/O coroutine\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15660 invoked by uid 550); 21 Jul 2017 11:13:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15636 invoked from network); 21 Jul 2017 11:13:47 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 50564461F9
Authentication-Results: ext-mx05.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx05.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=ppandit@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com 50564461F9
Date: Fri, 21 Jul 2017 16:43:30 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
Message-ID: <alpine.LFD.2.20.1707211639130.27610@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]); Fri, 21 Jul 2017 11:13:36 +0000 (UTC)
Subject: [oss-security] CVE-2017-7539 Qemu: qemu-nbd crashes due to undefined I/O
 coroutine

   Hello,

Quick Emulator(Qemu) built with the Network Block Device(NBD) Server support 
is vulnerable to a crash via assertion failure. It could occur if a client 
sent undue data during initial connection negotiation.

A remote user/process could use this flaw to crash the qemu-nbd server 
resulting in DoS.

Upstream patch:
---------------
   -> http://git.qemu.org/?p=qemu.git;a=commitdiff;h=2b0bbc4f8809c972bad134bc1a2570dbb01dea0b

Introduced by:
--------------
   -> http://git.qemu.org/?p=qemu.git;a=commitdiff;h=ff82911cd3f69f028f2537825c9720ff78bc3f19

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1473622

'CVE-2017-7539' assigned by Red Hat Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
