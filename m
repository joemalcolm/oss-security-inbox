X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/02/17/7
Message-ID: <20150217212415.GW5587@outflux.net>
Date: Tue, 17 Feb 2015 13:24:16 -0800
From: Kees Cook <keescook@...omium.org>
To: oss-security@...ts.openwall.com
Cc: Tyler Hicks <tyhicks@...onical.com>, Dmitry Chernenkov <dmitryc@...gle.com>, Michael Halcrow <mhalcrow@...gle.com>
Subject: CVE request: Linux kernel ecryptfs 1-byte overwrite
Content-Type: text/plain; charset=utf-8

Hello,

This fixes a 1-byte NULL write past the end of allocated memory:

http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=942080643bce061c3dd9d5718d3b745dcb39a8bc

Thanks,

-Kees

-- 
Kees Cook
Chrome OS Security
