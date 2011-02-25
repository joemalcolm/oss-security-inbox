X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/02/25/6
Message-ID: <20110225043240.GA20649@ksplice.com>
Date: Thu, 24 Feb 2011 23:32:40 -0500
From: Nelson Elhage <nelhage@...lice.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: libcgroup: Failure to verify netlink messages
Content-Type: text/plain; charset=utf-8

The cgrulesengd program from libcgroup failed to properly verify the
sender of netlink messages, allowing arbitrary users to spoof events
to the daemon, causing it to place processes into incorrect cgroups.

Note that the default configuration of cgrulesengd does not contain
any any rules, so this is probably only usefully exploitable if an
admin have specifically configured cgrulesengd to enforce some policy.

References:
http://sourceforge.net/mailarchive/message.php?msg_id=27102603

- Nelson
