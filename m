X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/10/25/4
Message-ID: <20101025233623.GO980@outflux.net>
Date: Mon, 25 Oct 2010 16:36:23 -0700
From: Kees Cook <kees@...ntu.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: kernel: heap contents leak from ETHTOOL_GRXCLSRLALL
Content-Type: text/plain; charset=utf-8

This is an uncommon leak I found that was fixed in 2.6.36 here:
http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commitdiff;h=ae6df5f96a51818d6376da5307d773baeece4014

This is different from CVE-2010-2478, but was introduced at the same time
(0853ad66, 2.6.27-rc1).

Thanks,

-Kees

-- 
Ubuntu Security Team
Kees Cook
