X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/07/09/10
Message-ID: <878wwbf1bb.fsf@mid.deneb.enyo.de>
Date: Wed, 09 Jul 2008 18:51:36 +0200
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Subject: CVE request: PowerDNS recursor source port randomization
Content-Type: text/plain; charset=utf-8

3.1.5 did not use the strong PRNG for source port selection.
References:

<http://doc.powerdns.com/changelog.html#CHANGELOG-RECURSOR-3-1-6>
<http://wiki.powerdns.com/cgi-bin/trac.fcgi/changeset/1179>

Somehow this fell through the cracks. 8-(
