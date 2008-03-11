X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/03/11/3
Message-ID: <20080311231412.GH30843@outflux.net>
Date: Tue, 11 Mar 2008 16:14:12 -0700
From: Kees Cook <kees@...flux.net>
To: oss-security@...ts.openwall.com
Subject: CVE request: setrlimit can be avoided (Linux less than 2.6.22)
Content-Type: text/plain; charset=utf-8

Hi,

This rlimit-avoiding bug probably needs a CVE associated with it.  Users
could avoid RLIMIT_CPU by setting it to "0".  The fixes in 2.6.17 did
not actually fix the problem.


Bugs:
  https://launchpad.net/bugs/107209
  http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=419706

Fixed in 2.6.22:
  http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commitdiff;h=9926e4c74300c4b31dee007298c6475d33369df0

Thanks,

-Kees

-- 
Kees Cook
Ubuntu Security Team
