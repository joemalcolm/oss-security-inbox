X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/10/07/2
Message-ID: <alpine.LFD.2.20.1610071639580.8956@wniryva>
Date: Fri, 7 Oct 2016 16:44:35 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
cc: Li Qiang <liqiang6-s@....cn>
Subject: CVE request Qemu virtio-gpu: memory leak in virtio_gpu_resource_create_2d
Content-Type: text/plain; charset=utf-8

   Hello,

Quick Emulator(Qemu) built with the Virtio GPU Device support is vulnerable to 
a memory leakage issue. It could occur while processing virtio GPU command 
VIRTIO_GPU_CMD_RESOURCE_CREATE_2D.

A privileged user/process inside guest could use this flaw to exhaust host 
memory resulting in DoS.

Upstream fix:
-------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-09/msg04129.html

This issue was reported by Li Qiang of 360.cn Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
