X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/02/07/8
Message-ID: <alpine.LFD.2.20.1702080024220.11236@wniryva>
Date: Wed, 8 Feb 2017 00:26:56 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
cc: Li Qiang <liqiang6-s@....cn>
Subject: CVE request Qemu: virtio: integer overflow in handling virtio-crypto requests
Content-Type: text/plain; charset=utf-8

    Hello,

Quick Emulator(Qemu) built with the Virtio Crypto device emulation support is 
vulnerable to an integer overflow issue. It could occur while handling data 
encryption/decryption requests in 'virtio_crypto_handle_sym_req'.

A privileged user inside guest could use this flaw to crash the Qemu process 
resulting in DoS or potentially execute arbitrary code on the host with 
privileges of the Qemu process.

Upstream patch:
---------------
   -> https://lists.nongnu.org/archive/html/qemu-devel/2017-01/msg01368.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1420092

This issue was reported by Mr Li Qiang of 360.cn Inc.


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
