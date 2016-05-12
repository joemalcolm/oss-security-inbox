X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/05/12/1
Message-ID: <1F2D4DA31CA62740BFF46830A0E6A4F706575A62@EXMBX-TJ003.tencent.com>
Date: Thu, 12 May 2016 06:45:37 +0000
From: winsonliu(刘科) <winsonliu@...cent.com>
To: oss-security <oss-security@...ts.openwall.com>, cve-assign <cve-assign@...re.org>
Subject: CVE Request - OpenJPEG: Security Fixes
Content-Type: text/plain; charset=utf-8

Hi,

Some security issues of OpenJPEG have been fixed. Please consider assigning CVE numbers to them.

1. Issue 774
OpenJPEG Heap Buffer Overflow in function color_cmyk_to_rgb of color.c
Fixed via https://github.com/uclouvain/openjpeg/commit/162f6199c0cd3ec1c6c6dc65e41b2faab92b2d91

2. Issue 775
OpenJPEG Out-of-Bounds Access in function opj_tgt_reset of tgt.c
Fixed via https://github.com/uclouvain/openjpeg/commit/1a8318f6c24623189ecb65e049267c6f2e005c0e

3. Issue 733
OpenJPEG division-by-zero in function opj_tcd_init_tile of tcd.c
Fixed via https://github.com/uclouvain/openjpeg/commit/8f9cc62b3f9a1da9712329ddcedb9750d585505c

Regards,
Ke Liu of Tencent's Xuanwu LAB

