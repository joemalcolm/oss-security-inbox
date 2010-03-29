X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/03/29/2
Message-ID: <878w9bjvhy.fsf@mid.deneb.enyo.de>
Date: Mon, 29 Mar 2010 12:02:49 +0200
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Subject: OpenSSL: CVE-2010-0740 and CVE-2009-3245 appear to be dupes
Content-Type: text/plain; charset=utf-8

As far as I can tell, both are the same "record of death
vulnerability" (and probably 0.9.8m-only for FLOSS systems because
sizeof(short) * CHAR_BITS == 16 for us).
