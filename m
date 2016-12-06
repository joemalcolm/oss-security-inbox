X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/12/06/11
Message-ID: <alpine.LFD.2.20.1612070140070.9956@wniryva>
Date: Wed, 7 Dec 2016 01:46:22 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
cc: Li Qiang <liq3ea@...il.com>
Subject: CVE request Qemu: 9pfs: memory leakage via proxy/handle callbacks
Content-Type: text/plain; charset=utf-8

   Hello,

Quick Emulator(Qemu) built with the VirtFS, host directory sharing via Plan 9 
File System(9pfs) support, is vulnerable to memory leakage issue. It could 
occur via its '9p-handle' or '9p-proxy' backend drivers as they do not free 
their respective allocated data objects.

A privileged user inside guest could use this flaw to leak host memory, thus 
affecting other services on the host and/or potentially crash the Qemu process 
on the host.

Upstream patches:
-----------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-11/msg03278.html

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
