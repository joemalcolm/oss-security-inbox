X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/03/07/6
Message-ID: <20140307124510.GA28555@kria>
Date: Fri, 7 Mar 2014 13:45:10 +0100
From: Sabrina Dubroca <sd@...asysnail.net>
To: oss-security@...ts.openwall.com
Cc: hannes@...essinduktion.org
Subject: CVE Request: Linux kernel: IPv6: crash due to router advertisement flooding
Content-Type: text/plain; charset=utf-8

The Linux kernel is vulnerable to a crash on hosts that accept router
advertisements. An unlimited number of routes can be created from
router advertisements.

A remote attacker in the same layer 2 segment can cause a crash from
memory exhaustion by flooding router advertisements to a target
machine.

Upstream fix:
https://git.kernel.org/cgit/linux/kernel/git/davem/net.git/commit/?id=c88507fbad8055297c1d1e21e599f46960cbee39

The patch is pending for stable.
http://patchwork.ozlabs.org/patch/327515/

Introduced by:
https://git.kernel.org/cgit/linux/kernel/git/davem/net.git/commit/?id=957c665f37007de93ccbe45902a23143724170d0

This commit appeared in 3.0.


Thanks,

-- 
Sabrina Dubroca
