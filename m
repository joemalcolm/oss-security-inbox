X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/10/14/8
Message-ID: <alpine.LFD.2.20.1610141642160.13950@wniryva>
Date: Fri, 14 Oct 2016 16:44:16 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
cc: Huawei PSIRT <psirt@...wei.com>
Subject: CVE request Qemu: net: OOB buffer access in rocker switch emulation
Content-Type: text/plain; charset=utf-8

   Hello,

Quick Emulator(Qemu) built with the Rocker switch emulation support is 
vulnerable to an OOB read access issue. It could occur while performing a DMA 
access 'TEST_DMA_CTRL_INVERT' test.

A privileged guest user could use this issue to crash the Qemu process 
instance on the host resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-10/msg02501.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1384896

This issue was reported by Huawei Product Security Incident Response Team 
(PSIRT), Huawei Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
