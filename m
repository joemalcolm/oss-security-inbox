X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/12/01/10
Message-ID: <CAAeHK+yya7cNPsY97wiss_G9ZCS3sOVbrTSZwxjqXPg7FzyF1A@mail.gmail.com>
Date: Thu, 1 Dec 2016 17:23:31 +0100
From: Andrey Konovalov <andreyknvl@...gle.com>
To: cve-assign@...re.org
Cc: oss-security@...ts.openwall.com, Dmitry Vyukov <dvyukov@...gle.com>,  Kostya Serebryany <kcc@...gle.com>
Subject: CVE Request: Linux: net: out-of-bounds due do a signedness issue when defragging ipv6
Content-Type: text/plain; charset=utf-8

Hi,

There is a bug in the Linux kernel ipv6 implementation, which leads to
an out-of-bounds write on ipv6 packet defragmentation.

A fix was sent upstream:
https://www.spinics.net/lists/netdev/msg407525.html

More details here:
https://groups.google.com/forum/#!topic/syzkaller/GFbGpX7nTEo

Could you assign a CVE for this?

Thanks!
