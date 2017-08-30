X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/08/30/3
Message-ID: <nycvar.YSQ.7.76.1708301531270.5404@wniryva>
Date: Wed, 30 Aug 2017 15:33:00 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
cc: David Buchanan <d@...buchanan.co.uk>
Subject: CVE-2017-13672 Qemu: vga: OOB read access during display update
Content-Type: text/plain; charset=utf-8

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
