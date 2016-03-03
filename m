X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/03/03/9
Message-ID: <alpine.LFD.2.20.1603031632120.7999@wniryva>
Date: Thu, 3 Mar 2016 16:34:42 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
cc: Liu Ling <liuling-it@....cn>
Subject: CVE request Qemu: net: out of bounds read in net_checksum_calculate
Content-Type: text/plain; charset=utf-8

   Hello,

Qemu emulator built with the IP checksum routines is vulnerable to an OOB read 
access issue. It could occur while computing checksum for TCP/UDP packets, as 
the function uses payload length from the packet without checking against the 
data buffer size.

A user inside guest could use this flaw to read excessive bytes or crash the 
Qemu process resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-03/msg00671.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1296567

This issue was discovered by Ling Liu of Qihoo 360 Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
