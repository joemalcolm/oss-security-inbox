X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/07/28/13
Message-ID: <20110728223035.GG4946@outflux.net>
Date: Thu, 28 Jul 2011 15:30:35 -0700
From: Kees Cook <kees@...ntu.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: kernel: gro: Only reset frag0 when skb can be pulled
Content-Type: text/plain; charset=utf-8

Hi,

This fixes a remote crasher under certain network device configurations:
http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commitdiff;h=17dd759c67f21e34f2156abcf415e1f60605a188

Thanks,

-Kees

-- 
Kees Cook
Ubuntu Security Team
