X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/11/11/6
Message-ID: <20111111225001.GB28950@dhcp-25-225.brq.redhat.com>
Date: Fri, 11 Nov 2011 23:50:02 +0100
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE Request -- kernel: jbd/jbd2: invalid value of first log block leads to oops
Content-Type: text/plain; charset=utf-8

A flaw was found in the way Linux kernel's Journaling Block Device (JBD)
handled invalid log first block value. An attacker able to mount
malicious ext3 or ext4 image could use this flaw to crash the system.

Upstream commit:
8762202dd0d6e46854f786bdb6fb3780a1625efe

Reference:
https://bugzilla.redhat.com/show_bug.cgi?id=753341

Thanks,
-- 
Petr Matousek / Red Hat Security Response Team
