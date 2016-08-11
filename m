X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/08/11/8
Message-ID: <alpine.LFD.2.20.1608120118130.16386@wniryva>
Date: Fri, 12 Aug 2016 01:24:44 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
cc: Li Qiang <liqiang6-s@....cn>
Subject: CVE request Qemu: an infinite loop during packet fragmentation
Content-Type: text/plain; charset=utf-8

    Hello,

Quick Emulator(Qemu) built with the VMWARE VMXNET3 NIC device support,
with network abstraction layer is vulnerable to an infinite loop issue.
It could occur while fragmenting packets in the device.

A privileged user inside guest could use this flaw to crash the Qemu instance 
resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-08/msg01601.html

This issue was reported by Li Qiang of 360.cn Inc.


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
