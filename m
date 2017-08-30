X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["671" "Wednesday" "30" "August" "2017" "15:33:00" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1708301531270.5404@wniryva>" "23" "[oss-security] CVE-2017-13672 Qemu: vga: OOB read access during display update" "^cc:" nil nil "8" "2017083010:03:00" "[oss-security] CVE-2017-13672 Qemu: vga: OOB read access during display update" (number mark "U       ppandit@redh Aug 30   23/671   " thread-indent "\"[oss-security] CVE-2017-13672 Qemu: vga: OOB read access during display update\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32317 invoked by uid 550); 30 Aug 2017 10:03:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32283 invoked from network); 30 Aug 2017 10:03:17 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 808397EA8C
Authentication-Results: ext-mx04.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx04.extmail.prod.ext.phx2.redhat.com; spf=fail smtp.mailfrom=ppandit@redhat.com
X-X-Sender: pjp@javelin
Message-ID: <nycvar.YSQ.7.76.1708301531270.5404@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Wed, 30 Aug 2017 10:03:05 +0000 (UTC)
cc: David Buchanan <d@vidbuchanan.co.uk>
Date: Wed, 30 Aug 2017 15:33:00 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2017-13672 Qemu: vga: OOB read access during display update
To: oss security list <oss-security@lists.openwall.com>

   Hello,

Quick emulator(Qemu) built with the VGA display emulator support is vulnerable 
to an out-of-bounds read access issue. It could occur while reading VGA memory 
to update graphics display.

A privileged user/process inside guest could use this flaw to crash the Qemu 
process on the host resulting in DoS situation.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2017-08/msg04684.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1486560

This issue was reported by David Buchanan.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
