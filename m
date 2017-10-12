X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/10/12/16
Message-ID: <nycvar.YSQ.7.76.1710122325300.10613@wniryva>
Date: Thu, 12 Oct 2017 23:32:59 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
cc: niuguoxiang <niuguoxiang@...wei.com>
Subject: CVE-2017-15289 Qemu: cirrus: OOB access issue in mode4and5 write functions
Content-Type: text/plain; charset=utf-8

   Hello,

Quick emulator(Qemu) built with the Cirrus CLGD 54xx VGA Emulator support is 
vulnerable to an out-of-bounds write access issues. It could occur while 
writing to VGA memory via mode4and5 write functions.

A privileged user inside guest could use this flaw to crash the Qemu process 
resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2017-10/msg02557.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1501290

This issue was reported by Guoxiang Niu.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
