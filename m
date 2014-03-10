X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/03/10/4
Message-ID: <20140310164036.GJ18088@dhcp-25-225.brq.redhat.com>
Date: Mon, 10 Mar 2014 17:40:36 +0100
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2014-0131 -- kernel: net: use-after-free during segmentation with zerocopy
Content-Type: text/plain; charset=utf-8

A flaw was found in the way segmentation was performed on skbs
originated from vhost-net when zerocopy feature was enabled.

This flaw could be potentially used to leak kernel memory.

Upstream patch submission:
http://marc.info/?l=linux-netdev&m=139446896921968&w=2

-- 
Petr Matousek / Red Hat Security Response Team
PGP: 0xC44977CA 8107 AF16 A416 F9AF 18F3  D874 3E78 6F42 C449 77CA
