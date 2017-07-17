X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["609" "Monday" "17" "July" "2017" "13:14:43" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1707171312030.16715@wniryva>" "23" "[oss-security] CVE-2017-11334 Qemu: exec: oob access during dma operation" nil nil nil "7" "2017071707:44:43" "[oss-security] CVE-2017-11334 Qemu: exec: oob access during dma operation" (number mark "U       ppandit@redh Jul 17   23/609   " thread-indent "\"[oss-security] CVE-2017-11334 Qemu: exec: oob access during dma operation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9621 invoked by uid 550); 17 Jul 2017 07:45:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9600 invoked from network); 17 Jul 2017 07:44:59 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 0B8038535D
Authentication-Results: ext-mx01.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx01.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=ppandit@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com 0B8038535D
Date: Mon, 17 Jul 2017 13:14:43 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Alex <broscutamaker@gmail.com>
Message-ID: <alpine.LFD.2.20.1707171312030.16715@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Mon, 17 Jul 2017 07:44:48 +0000 (UTC)
Subject: [oss-security] CVE-2017-11334 Qemu: exec: oob access during dma operation

   Hello,

Qemu emulator built to use 'qemu_map_ram_ptr' to access guests' ram block area 
is vulnerable to a OOB r/w access issue. It could occur during a DMA 
operation.

A privileged user inside guest could use this flaw to crash the guest instance 
resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2017-07/msg03775.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1471638

This issue was reported by Mr Alex.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
