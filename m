X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/07/30/2
Message-ID: <40339054.1134.15d91d384bc.Coremail.sohu0106@126.com>
Date: Sun, 30 Jul 2017 12:49:04 +0800 (CST)
From: sohu0106 <sohu0106@....com>
To: oss-security@...ts.openwall.com
Subject: Linux kernel: driver/video/fbdev/aty/atyfb_base.c: atyfb_ioctl() stack infoleak
Content-Type: text/plain; charset=utf-8

driver/video/fbdev/aty/atyfb_base.c


In atyfb_ioctl() structure atyclk is copied to userland with padding bytes after
"vclk_post_div" field unitialized.  It leads to leaking of
contents of kernel stack memory.  We have to initialize them to zero. or it will allows local users to obtain potentially sensitive information from kernel stack memory by reading a copy of this structure


https://github.com/torvalds/linux/pull/441
