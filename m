X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/12/05/2
Message-ID: <nycvar.YSQ.7.76.1712051252001.29623@wniryva>
Date: Tue, 5 Dec 2017 12:54:12 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
cc: zhangboxian <zhangboxian@...wei.com>
Subject: CVE-2017-17381 Qemu: virtio: divide by zero exception while updating rings
Content-Type: text/plain; charset=utf-8

   Hello,

Virtio Vring implementation in Quick Emulator(QEMU) is vulnerable to an 
arithmetic exception issue. It could occur if a guest was to unset vring 
alignment while updating Virtio rings.

A guest user/process could use this flaw to crash Qemu process resulting in 
DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2017-12/msg00166.html

This issue was reported by Huawei Alpha Labs.

'CVE-2017-17381' assigned via -> https://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
