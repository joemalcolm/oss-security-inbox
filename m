X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/07/15/3
Message-ID: <20130715162417.GQ4441@dhcp-25-225.brq.redhat.com>
Date: Mon, 15 Jul 2013 18:24:17 +0200
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com
Cc: Hannes Frederic Sowa <hannes@...essinduktion.org>
Subject: CVE Request -- Linux kernel: ipv6: BUG_ON in fib6_add_rt2node()
Content-Type: text/plain; charset=utf-8

If two router advertisment speaker announce seperate default gateways
with infinite timeout the kernel currently packs these routes together
into an ecmp route set. If one of the RA speaker now changes the
advertised expiration to a lower value and a third route with infinite
timeout pops up we end up with a BUG_ON.

Remote attacker could use this flaw to crash the system.

Fixed by:
http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=307f2fb95e9b96b3577916e73d92e104f8f26494

Introduced by:
http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=51ebd3181572af8d5076808dab2682d800f6da5d

Introduced in upstream version:
v3.7-rc1

Acknowledgements:

Red Hat would like to thank Hannes Frederic Sowa for reporting this
issue.

-- 
Petr Matousek / Red Hat Security Response Team
