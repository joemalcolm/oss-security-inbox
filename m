X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/03/02/8
Message-ID: <alpine.LFD.2.20.1603022054390.31146@wniryva>
Date: Wed, 2 Mar 2016 20:57:44 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
cc: Yang Hongke <yanghongke@...wei.com>
Subject: CVE request Qemu: net: ne2000: infinite loop in ne2000_receive
Content-Type: text/plain; charset=utf-8

   Hello,

Qemu emulator built with the NE2000 NIC emulation support is vulnerable to an 
infinite loop issue. It could occur when receiving packets over the network. A 
privileged user inside guest could use this flaw to crash the Qemu instance 
resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-02/msg06126.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1303106

This issue was discovered by Hongke Yang of Huawei Technologies Co. Ltd.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
