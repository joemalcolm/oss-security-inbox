X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/02/13/11
Message-ID: <alpine.LFD.2.20.1702140042040.10163@wniryva>
Date: Tue, 14 Feb 2017 00:45:22 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
cc: Li Qiang <liqiang6-s@....cn>
Subject: CVE-2017-5973 Qemu: usb: infinite loop while doing control transfer in xhci_kick_epctx
Content-Type: text/plain; charset=utf-8

   Hello,

Quick emulator(Qemu) built with the USB xHCI controller emulator support is 
vulnerable to an infinite loop issue. It could occur while processing control 
transfer descriptor's sequence in xhci_kick_epctx.

A privileged user inside guest could use this flaw to crash the Qemu process 
resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2017-02/msg01101.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1421626

This issue was reported by Mr Li Qiang of 360.cn Inc.

'CVE-2017-5973' assigned via -> https://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
