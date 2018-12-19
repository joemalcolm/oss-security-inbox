X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/12/19/2
Message-ID: <nycvar.YSQ.7.76.1812191246500.14650@xnncv>
Date: Wed, 19 Dec 2018 12:49:47 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
cc: Li Qiang <liq3ea@....com>
Subject: CVE-2018-20216 QEMU: pvrdma: infinite loop in pvrdma_qp_send/recv
Content-Type: text/plain; charset=utf-8

   Hello,

An infinite loop issue was found in QEMU's implementation of VMWare's 
paravirtual RDMA device. It could occur while transferring QP ring objects' 
data in pvrdma_qp_send/recv functions.

A guest user/process could use this flaw to cause infinite loop resulting in 
DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2018-12/msg03052.html

This issue was reported by Li Qiang.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
