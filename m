X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/07/27/3
Message-ID: <20090727161850.GB3400@redhat.com>
Date: Mon, 27 Jul 2009 10:18:50 -0600
From: Vincent Danen <vdanen@...hat.com>
To: oss-security@...ts.openwall.com
Subject: squid 3.x vulnerabilities
Content-Type: text/plain; charset=utf-8

There are some security vulnerabilities in squid 3.x that have been
fixed today:

http://www.squid-cache.org/Advisories/SQUID-2009_2.txt

Specifically:

Due to incorrect buffer limits and related bound checks Squid
is vulnerable to a denial of service attack when processing
specially crafted requests or responses.

Due to incorrect data validation Squid is vulnerable to a denial
of service attack when processing specially crafted responses.



Patches are linked to from the advisory.

No CVE names look to be assigned; can we get some?  I think we probably
need two CVE names here.

Thanks.

-- 
Vincent Danen / Red Hat Security Response Team 
