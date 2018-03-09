X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/03/09/1
Message-ID: <nycvar.YSQ.7.76.1803091521260.21217@wniryva>
Date: Fri, 9 Mar 2018 15:25:36 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
cc: Ross Lagerwall <ross.lagerwall@...rix.com>
Subject: CVE-2018-7858 Qemu: cirrus: OOB access when updating vga display
Content-Type: text/plain; charset=utf-8

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
