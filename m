X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/09/25/1
Message-ID: <CAFcO6XP-YkHxuJWBRYWKYSne+WmvSd8E1t1doo5Xe=Bw+rGvNQ@mail.gmail.com>
Date: Wed, 25 Sep 2019 18:53:14 +0800
From: butt3rflyh4ck <butterflyhuangxx@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2019-16714: Linux kernel net/rds: info leak vulnerability in rds6_inc_info_copy
Content-Type: text/plain; charset=utf-8

Hi, there is a info leak vulnerability in rds modules in linux kernel.

CVE-2019-16714
================
description:

In the Linux kernel before 5.2.14, rds6_inc_info_copy in net/rds/recv.c
allows attackers to obtain sensitive information from kernel stack memory
because tos and flags fields are not initialized.

=================
some more details in https://nvd.nist.gov/vuln/detail/CVE-2019-16714

Fixed in
https://github.com/torvalds/linux/commit/7d0a06586b2686ba80c4a2da5f91cb10ffbea736
================

Credit :

This issue was discovered by the ADLab of venustech.

