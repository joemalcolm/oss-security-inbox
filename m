X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/11/02/1
Message-ID: <nycvar.YSQ.7.76.1811021424410.17672@xnncv>
Date: Fri, 2 Nov 2018 14:27:05 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
cc: Li Qiang <liq3ea@...il.com>
Subject: CVE-2018-16847 QEMU: nvme: Out-of-bounds r/w buffer access in cmb operations
Content-Type: text/plain; charset=utf-8

   Hello,

An OOB heap buffer r/w access issue was found in the NVM Express Controller 
emulation in QEMU.  It could occur in nvme_cmb_ops routines in nvme devices. A 
guest user/process could use this flaw to crash the QEMU process resulting in 
DoS or potentially run arbitrary code with privileges of the QEMU process.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2018-11/msg00200.html

This issue was found and reported by Li Qiang. 'CVE-2018-16847' assigned by 
Red Hat Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
