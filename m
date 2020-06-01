X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["693" "Monday" "1" "June" "2020" "17:54:06" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.77.849.2006011752180.62159@xnncv>" "23" "[oss-security] CVE-2020-13659 QEMU: exec: address_space_map returns NULL without setting length to zero may lead to DoS" nil nil nil "6" "2020060112:24:06" "[oss-security] CVE-2020-13659 QEMU: exec: address_space_map returns NULL without setting length to zero may lead to DoS" (number mark "U       ppandit@redh Jun  1   23/693   " thread-indent "\"[oss-security] CVE-2020-13659 QEMU: exec: address_space_map returns NULL without setting length to zero may lead to DoS\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-13659 QEMU: exec: address_space_map returns NULL without setting length to zero may lead to DoS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28252 invoked by uid 550); 1 Jun 2020 12:24:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28232 invoked from network); 1 Jun 2020 12:24:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1591014258;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=6pspZxCZu/eaZMKJEDsSypxy7mdE+Ga+l0C0m3MmPJ8=;
	b=SramXDoAk3SEp7Y2gDVDCEgZ2K7A3a3NmhLzVp3NTo3fuHpv2gMk3cK91A7+FGlRSBT+ea
	Iih1zVWypKhSGmpmvl3zlGrezywFjPqf/li9p3qZX/z2HeY+FJUYav3bY7j3XWiChXIQaC
	Fl8dFgOHu09SDSNiXn/5ziiWfGxK4sg=
X-MC-Unique: DQbGkxwZMYCyyrbISqQhvA-1
Date: Mon, 1 Jun 2020 17:54:06 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
cc: Alexander Bulekov <alxndr@bu.edu>
Message-ID: <nycvar.YSQ.7.77.849.2006011752180.62159@xnncv>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] CVE-2020-13659 QEMU: exec: address_space_map returns NULL without
 setting length to zero may lead to DoS

   Hello,

A NULL pointer dereference issue was found in the MegaRAID SAS 8708EM2 
emulator of the QEMU. This issue occurs because the address_space_map() API 
while mapping physical memory into host's virtual address space may return 
NULL, without setting the length parameter to zero(0). A guest user/process 
may use this flaw to crash the QEMU process on the host resulting in DoS 
scenario.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2020-05/msg07313.html

Reference:
----------
   -> https://bugs.launchpad.net/qemu/+bug/1878259


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

