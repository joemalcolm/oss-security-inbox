X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/10/14/6
Message-ID: <alpine.LFD.2.20.1610141638130.13950@wniryva>
Date: Fri, 14 Oct 2016 16:42:09 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
cc: Huawei PSIRT <psirt@...wei.com>
Subject: CVE request Qemu: dma: rc4030 divide by zero error in set_next_tick
Content-Type: text/plain; charset=utf-8

   Hello,

Quick Emulator(Qemu) built with the JAZZ RC4030 chipset emulation support is 
vulnerable to a divide by zero issue. It could occur while computing its 
periodic timer's next tick value.

A privileged guest user could use this flaw to crash the Qemu process instance 
on the host resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-10/msg02577.html

This issue was reported by Huawei Product Security Incident Response Team 
(PSIRT), Huawei Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
