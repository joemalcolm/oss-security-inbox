X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/05/25/5
Message-ID: <alpine.LFD.2.20.1605251756250.15974@wniryva>
Date: Wed, 25 May 2016 17:59:16 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
cc: Li Qiang <liqiang6-s@....cn>
Subject: CVE Request Qemu: scsi: megasas: stack information leakage while reading configuration
Content-Type: text/plain; charset=utf-8

   Hello,

Quick Emulator(Qemu) built with the MegaRAID SAS 8708EM2 Host Bus Adapter 
emulation support is vulnerable to an information leakage issue. It could 
occur while processing MegaRAID Firmware Interface(MFI) command to read device 
configuration in 'megasas_dcmd_cfg_read'.

A privileged user inside guest could use this flaw to leak host memory bytes.

Upstream patch
--------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-05/msg04419.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1339583


This issue was discovered by Li Qiang of 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
