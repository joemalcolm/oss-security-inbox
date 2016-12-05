X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/12/05/15
Message-ID: <alpine.LFD.2.20.1612060030210.20462@wniryva>
Date: Tue, 6 Dec 2016 00:39:16 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
cc: Li Qiang <liq3ea@...il.com>
Subject: CVE request: Qemu: display: virtio-gpu-3d: information leakage in virgl_cmd_get_capset_info
Content-Type: text/plain; charset=utf-8

   Hello,

Quick Emulator built with the Virtio GPU Device emulator support is vulnerable 
to an information leakage issue. It could occur while processing 
'VIRTIO_GPU_CMD_GET_CAPSET_INFO' command.

A guest user/process could use this flaw to leak contents of the host memory 
bytes.

Upstream patch:
---------------
   -> https://lists.nongnu.org/archive/html/qemu-devel/2016-11/msg00019.html

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
