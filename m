X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["605" "Friday" "9" "March" "2018" "15:25:36" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1803091521260.21217@wniryva>" "19" "[oss-security] CVE-2018-7858 Qemu: cirrus: OOB access when updating vga display" nil nil nil "3" "2018030909:55:36" "[oss-security] CVE-2018-7858 Qemu: cirrus: OOB access when updating vga display" (number mark "U       ppandit@redh Mar  9   19/605   " thread-indent "\"[oss-security] CVE-2018-7858 Qemu: cirrus: OOB access when updating vga display\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7958 invoked by uid 550); 9 Mar 2018 09:55:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7918 invoked from network); 9 Mar 2018 09:55:55 -0000
Date: Fri, 9 Mar 2018 15:25:36 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Ross Lagerwall <ross.lagerwall@citrix.com>
Message-ID: <nycvar.YSQ.7.76.1803091521260.21217@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]); Fri, 09 Mar 2018 09:55:44 +0000 (UTC)
Subject: [oss-security] CVE-2018-7858 Qemu: cirrus: OOB access when updating vga display

   Hello,

Quick emulator(QEMU) built with the Cirrus CLGD 54xx VGA Emulator support is 
vulnerable to an out-of-bounds access issue. It could occur while updating VGA 
display, after guest has adjusted the display dimensions.

A privileged user inside guest could use this flaw to crash the Qemu process 
resulting in DoS.

Upstream patch:
---------------
   -> https://lists.nongnu.org/archive/html/qemu-devel/2018-03/msg02174.html

This issue was reported by Ross Lagerwall of citrix.com.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
