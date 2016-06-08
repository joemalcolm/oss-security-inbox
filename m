X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/06/08/3
Message-ID: <alpine.LFD.2.20.1606081531020.11110@wniryva>
Date: Wed, 8 Jun 2016 15:32:44 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
cc: Li Qiang <liqiang6-s@....cn>
Subject: CVE Request Qemu: scsi: megasas: information leakage in megasas_ctrl_get_info
Content-Type: text/plain; charset=utf-8

   Hello,

Quick Emulator(Qemu) built with the MegaRAID SAS 8708EM2 Host Bus Adapter 
emulation support is vulnerable to an information leakage issue. It could 
occur while processing MegaRAID Firmware Interface(MFI) command to read device 
control information in 'megasas_ctrl_get_info'.

A privileged user inside guest could use this flaw to leak host memory bytes.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-06/msg01969.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1343909

This issue was reportd by Li Qiang of 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
