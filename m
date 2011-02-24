X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/02/24/18
Message-ID: <20110224235706.GU4212@outflux.net>
Date: Thu, 24 Feb 2011 15:57:06 -0800
From: Kees Cook <kees@...ntu.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: kernel: /proc/$pid/ leaks contents across setuid exec
Content-Type: text/plain; charset=utf-8

Hi,

I'd like to get a CVE assigned for this information leak issue:
https://lkml.org/lkml/2011/2/7/368

Pre-opened file descriptors in /proc/$pid/ can bypass DAC allowing
visibility into setuid process state, especially leaking ASLR offset.

Thanks,

-Kees

-- 
Kees Cook
Ubuntu Security Team
