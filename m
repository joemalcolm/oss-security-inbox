X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/09/25/48
Message-ID: <20140925231758.7b050bd3@pc>
Date: Thu, 25 Sep 2014 23:17:58 +0200
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: Re: nss RSA forgery (CVE-2014-1568)
Content-Type: text/plain; charset=utf-8

Some more info, but not much:
http://www.intelsecurity.com/advanced-threat-research/

Initially I thought this is probably not such a big deal because the
bleichenbacher attack requires e to be very small (like e=3 or e=4) and
everyone uses e=65537 these days. But it seems I was wrong on that,
lots of CAs still with e=3.

-- 
Hanno Böck
http://hboeck.de/

mail/jabber: hanno@...eck.de
GPG: BBB51E42

Download attachment "signature.asc" of type "application/pgp-signature" (820 bytes)
