X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/01/18/2
Message-ID: <p5o8qpsn-412o-3935-r5ss-n11o348op8s@redhat.com>
Date: Mon, 18 Jan 2021 19:48:07 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
cc: Wenxiang Qian <leonwxqian@...il.com>
Subject: CVE-2020-29443 QEMU: ide: atapi: OOB access while processing read commands
Content-Type: text/plain; charset=utf-8

   Hello,

An out-of-bounds read access issue was found in the ATAPI Emulator of QEMU. It 
occurs while processing ATAPI read command if logical block address(LBA) is 
set to an invalid value. A guest user may use this flaw to crash the QEMU 
process on the host resulting in DoS scenario.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2021-01/msg04255.html
   -> https://git.qemu.org/?p=qemu.git;a=commit;h=813212288970c39b1800f63e83ac6e96588095c6

This issue was reported by Wenxiang Qian of Tencent Blade Team.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

