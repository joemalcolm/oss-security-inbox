X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/02/22/3
Message-ID: <alpine.LFD.2.20.1602222116400.26144@wniryva>
Date: Mon, 22 Feb 2016 21:20:28 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
cc: Qinghao Tang <luodalongde@...il.com>
Subject: CVE request Qemu: usb: integer overflow in remote NDIS control message handling
Content-Type: text/plain; charset=utf-8

   Hello,

Qemu emulator built with the USB Net device emulation support is vulnerable to 
an integer overflow issue. It could occur while processing remote NDIS control 
message packets. As the incoming informationBufferOffset & Length combination 
could cross the integer range.

A privileged user inside guest could use this flaw to leak host memory bytes 
to guest or crash the Qemu process instance resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-02/msg03658.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1303120

This issue was discovered by Qinghao Tang of 360.cn Marvel Team, China.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
