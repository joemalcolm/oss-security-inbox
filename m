X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["751" "Monday" "1" "June" "2020" "23:53:01" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.77.849.2006012347080.62159@xnncv>" "20" "[oss-security] CVE-2020-13754 QEMU: msix: OOB access during mmio operations may lead to DoS" nil nil nil "6" "2020060118:23:01" "[oss-security] CVE-2020-13754 QEMU: msix: OOB access during mmio operations may lead to DoS" (number mark "U       ppandit@redh Jun  1   20/751   " thread-indent "\"[oss-security] CVE-2020-13754 QEMU: msix: OOB access during mmio operations may lead to DoS\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-13754 QEMU: msix: OOB access during mmio operations may lead to DoS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3991 invoked by uid 550); 1 Jun 2020 18:24:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3968 invoked from network); 1 Jun 2020 18:24:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1591035869;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=ODzem5HgVNlmfmq9FIAg20tQYQCYvXpXqJD96sbvyqw=;
	b=QQA5XCJAjFI1OnzJZBBtcHyAmLbHYzqwNvMmEfqPHoitZxz71sC9E48lg3Rg/hP7x+qVvP
	aPgibbHwqaWJOLoYOPiFDYa7iECcl9ztmGHmNmpPoNQAIt/0PuhkV+IgmKtA0SXe22I37o
	DA16KcVKjg6tC1P1yJji4Jz6a9QoSKo=
X-MC-Unique: -Y4d2EwvMn-gyfXBkzhtSw-1
Date: Mon, 1 Jun 2020 23:53:01 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
cc: "Ding, Ren" <rding@gatech.edu>, "Zhao, Hanqing" <hanqing@gatech.edu>, 
    anatoly.trosinenko@gmail.com, Alexander Bulekov <alxndr@bu.edu>
Message-ID: <nycvar.YSQ.7.77.849.2006012347080.62159@xnncv>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] CVE-2020-13754 QEMU: msix: OOB access during mmio operations may
 lead to DoS

   Hello,

An OOB access issue was found in the Message Signalled Interrupt (MSI-X) 
device support of QEMU. It could occur while performing MSI-X mmio operations 
when a guest sent address goes beyond the mmio region. A guest user/process 
may use this flaw to crash the QEMU process resulting in DoS scenario.

Proposed patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2020-06/msg00004.html

This issue was reported by Ren Ding & Hanqing Zhao of SSLab Georgia Tech. And 
also independently reported by Alexander Bulekov , Anatoly Trosinenko(CC'd). 
'CVE-2020-13754' requested via -> http://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

