X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/11/20/1
Message-ID: <nycvar.YSQ.7.76.1811201647270.17923@xnncv>
Date: Tue, 20 Nov 2018 16:51:28 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
cc: Greg Kurz <groug@...d.org>, zhibin hu <noirfate@...il.com>
Subject: CVE-2018-19364 Qemu: 9pfs: Use-after-free due to race condition while updating fid path
Content-Type: text/plain; charset=utf-8

   Hello,

A use-after-free flaw was found in the VirtFS, host directory sharing via Plan 
9 File System(9pfs) support in QEMU. It could occur due to a race condition in 
updating fid path in worker threads via v9fs_path_copy(), while accessing 
files on a shared host directory.

A user inside guest could use this flaw to crash the QEMU process resulting in 
DoS issue.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2018-11/msg01139.html
   -> https://lists.gnu.org/archive/html/qemu-devel/2018-11/msg02795.html

This issue was reported by Zhibin hu.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
