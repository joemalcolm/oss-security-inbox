X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/06/01/6
Message-ID: <nycvar.YSQ.7.77.849.2006012347080.62159@xnncv>
Date: Mon, 1 Jun 2020 23:53:01 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
cc: "Ding, Ren" <rding@...ech.edu>, "Zhao, Hanqing" <hanqing@...ech.edu>,  anatoly.trosinenko@...il.com, Alexander Bulekov <alxndr@...edu>
Subject: CVE-2020-13754 QEMU: msix: OOB access during mmio operations may lead to DoS
Content-Type: text/plain; charset=utf-8

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

