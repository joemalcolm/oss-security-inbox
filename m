X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/04/29/7
Message-ID: <20130429110608.GS8388@dhcp-25-225.brq.redhat.com>
Date: Mon, 29 Apr 2013 13:06:09 +0200
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE request -- Linux kernel: veth: double-free in case of congestion
Content-Type: text/plain; charset=utf-8

Description of the problem:
A flaw was found in the way Virtual Ethernet driver implementation in
the Linux kernel handled skbs in case of congestion.

A remote attacker could potentially use this flaw to crash the system.

Introduced in:
2.6.33-rc1

Fixed in:
2.6.34

Upstream fix:
https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=6ec82562ffc6f297d0de36d65776cff8e5704867

References:
http://marc.info/?l=linux-netdev&m=127310770900442&w=3

Thanks,
-- 
Petr Matousek / Red Hat Security Response Team
