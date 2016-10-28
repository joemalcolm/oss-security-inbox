X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/10/28/4
Message-ID: <alpine.LFD.2.20.1610281523450.17516@wniryva>
Date: Fri, 28 Oct 2016 15:25:02 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
cc: Li Qiang <liqiang6-s@....cn>
Subject: CVE request Qemu: 9pfs: memory leakage in v9fs_write
Content-Type: text/plain; charset=utf-8

   Hello,

Quick Emulator(Qemu) built with the VirtFS, host directory sharing via Plan 9 
File System(9pfs) support, is vulnerable to a memory leakage issue. It could 
occur when calling v9fs_write call.

A privileged user inside guest could use this flaw to leak the host memory 
bytes resulting in DoS for other services.

Upstream patches:
-----------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-10/msg02623.html

Reference:
----------
   -> http://wiki.qemu.org/Documentation/9psetup

This issue was reported by Li Qiang of 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
