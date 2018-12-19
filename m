X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/12/19/4
Message-ID: <nycvar.YSQ.7.76.1812191328500.14650@xnncv>
Date: Wed, 19 Dec 2018 13:31:27 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
cc: Li Qiang <liq3ea@....com>
Subject: CVE-2018-20126 QEMU: pvrdma: memory leakage when creating cq/qp
Content-Type: text/plain; charset=utf-8

   Hello,

A memory leakage issue was found in QEMU's implementation of VMWare's 
paravirtual RDMA device. It could occur while creating CQ/QP ring objects in 
create_cq/qp() routines, as it did not free ring objects' memory in case of an 
error.

A guest user/process could use this flaw to leak host memory resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2018-12/msg02824.html

This issue was reported by Li Qiang.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
