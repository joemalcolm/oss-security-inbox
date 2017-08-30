X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["707" "Wednesday" "30" "August" "2017" "15:34:51" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1708301533140.5404@wniryva>" "23" "[oss-security] CVE-2017-13673 Qemu: vga: reachable assert failure during during display update" nil nil nil "8" "2017083010:04:51" "[oss-security] CVE-2017-13673 Qemu: vga: reachable assert failure during during display update" (number mark "U       ppandit@redh Aug 30   23/707   " thread-indent "\"[oss-security] CVE-2017-13673 Qemu: vga: reachable assert failure during during display update\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11619 invoked by uid 550); 30 Aug 2017 10:05:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10177 invoked from network); 30 Aug 2017 10:05:06 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 0445C4A707
Authentication-Results: ext-mx09.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx09.extmail.prod.ext.phx2.redhat.com; spf=fail smtp.mailfrom=ppandit@redhat.com
Date: Wed, 30 Aug 2017 15:34:51 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: David Buchanan <d@vidbuchanan.co.uk>
Message-ID: <nycvar.YSQ.7.76.1708301533140.5404@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Wed, 30 Aug 2017 10:04:55 +0000 (UTC)
Subject: [oss-security] CVE-2017-13673 Qemu: vga: reachable assert failure during during
 display update

   Hello,

Quick emulator(Qemu) built with the VGA display emulator support is vulnerable 
to an assert failure issue. It could occur while updating graphics display, 
due to miscalculating region for dirty bitmap snapshot in split screen mode.

A privileged user/process inside guest could use this flaw to crash the Qemu 
process on the host resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2017-08/msg04685.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1486588

This issue was reported by David Buchanan.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
