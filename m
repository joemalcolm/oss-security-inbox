X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/07/30/1
Message-ID: <49eaccd9.1127.15d91d229be.Coremail.sohu0106@126.com>
Date: Sun, 30 Jul 2017 12:47:35 +0800 (CST)
From: sohu0106 <sohu0106@....com>
To: oss-security@...ts.openwall.com
Subject: Linux kernel: net/irda/af_irda.c: irda_getsockopt() stack infoleak
Content-Type: text/plain; charset=utf-8

net/irda/af_irda.c

Sometimes irda_getsockopt() doesn't initialize all members of list field of irda_device_list struct.  This structure is then copied to
userland.  It leads to leaking of contents of kernel stack memory.  We have to initialize them to zero , or it will allows local users to obtain potentially sensitive information from kernel stack memory by reading a copy of this structure

https://github.com/torvalds/linux/pull/440
