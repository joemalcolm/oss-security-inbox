X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/07/06/3
Message-ID: <03907aa5-5c2d-8bac-9053-7130e3159d62@redhat.com>
Date: Wed, 6 Jul 2016 12:10:19 +0200
From: Florian Weimer <fweimer@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Malicious primary DNS servers can crash secondaries
Content-Type: text/plain; charset=utf-8

It turns out that most DNS server implementations do not implement 
reasonable restrictions for zone sizes.  This allows an explicitly 
configured primary DNS server for a zone to crash a secondary DNS 
server, affecting service of other zones hosted on the same secondary 
server.

Some references:

https://lists.dns-oarc.net/pipermail/dns-operations/2016-July/015058.html
https://lists.dns-oarc.net/pipermail/dns-operations/2016-July/015075.html
https://gitlab.labs.nic.cz/labs/knot/merge_requests/541
https://www.nlnetlabs.nl/bugs-script/show_bug.cgi?id=790

PowerDNS is reportedly affected as well, but I did not find a public bug 
for this issue.

Florian
