X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/09/24/34
Message-ID: <20140925000321.7bbdaf04@pc>
Date: Thu, 25 Sep 2014 00:03:21 +0200
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: nss RSA forgery (CVE-2014-1568)
Content-Type: text/plain; charset=utf-8

One serious vuln per day isn't enough, so nss decided to bring us
another one.

Mozilla reports this:
https://www.mozilla.org/security/announce/2014/mfsa2014-73.html
Bugtracker entry still private, so hard to judge about details.
Interesting: Two independent discoveries (we had the same with
heartbleed and I couldn't believe this was coincidence).

This is what mcaffee has to say:
http://blogs.mcafee.com/executive-perspectives/need-know-berserk-mozilla

They say its related to BER/ASN1-parsing, but adam langley disagrees:
https://twitter.com/agl__/status/514881918110683136


And it seems cyassl had something similar, also found by intel:
http://www.yassl.com/yaSSL/Blog/Entries/2014/9/12_CyaSSL_3.2.0_Released.html

No real details yet and information seems confusing.

-- 
Hanno Böck
http://hboeck.de/

mail/jabber: hanno@...eck.de
GPG: BBB51E42

Download attachment "signature.asc" of type "application/pgp-signature" (820 bytes)
