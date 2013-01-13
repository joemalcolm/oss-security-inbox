X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/01/13/1
Message-ID: <87libx4bw6.fsf@mid.deneb.enyo.de>
Date: Sun, 13 Jan 2013 11:26:17 +0100
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Subject: DoS vulnerability in the BIND resolver (and potentially others)
Content-Type: text/plain; charset=utf-8

Scott Brynen described a behavioral change in some of the UltraDNS
authorative name servers:

<https://lists.dns-oarc.net/pipermail/dns-operations/2013-January/009501.html>

Mark Andrews of ISC confirmed that this triggers a denial of service
condition in the BIND recursive resolver:

<https://lists.dns-oarc.net/pipermail/dns-operations/2013-January/009506.html>

I think he is right, but this obviously has to be fixed in the
resolver.  Can this be assigned a CVE?
