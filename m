X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/02/20/3
Message-ID: <20130220004159.GU14748@dhcp-25-225.brq.redhat.com>
Date: Wed, 20 Feb 2013 01:41:59 +0100
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com
Cc: Kurt Seifried <kseifrie@...hat.com>
Subject: CVE request -- Linux kernel: vhost: fix length for cross region descriptor
Content-Type: text/plain; charset=utf-8

If a single descriptor crosses a region, the second chunk length should
be decremented by size translated so far, instead it includes the full
descriptor length. A privileged guest user could use this flaw to crash
the host or, potentially, corrupt host memory.

Upstream fix:
http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commitdiff;h=bd97120fc3d1a11f3124c7c9ba1d91f51829eb85

References:
https://bugzilla.redhat.com/show_bug.cgi?id=912905

Thanks,
-- 
Petr Matousek / Red Hat Security Response Team
