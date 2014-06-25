X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/06/25/2
Message-ID: <20140625115655.464dc0ad@hboeck.de>
Date: Wed, 25 Jun 2014 11:56:55 +0200
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: CVE request: timthumb remote code execution
Content-Type: text/plain; charset=utf-8

The timthumb code, used by a countless number of wordpress themes, has
(again) a remote code execution vulnerability:
http://seclists.org/fulldisclosure/2014/Jun/117

All details there.

This affects the very latest upstream version 2.8.13, I just opened an
upstream bug:
https://code.google.com/p/timthumb/issues/detail?id=485&thanks=485&ts=1403690188

No fix available at the moment.

-- 
Hanno Böck
http://hboeck.de/

mail/jabber: hanno@...eck.de
GPG: BBB51E42

Download attachment "signature.asc" of type "application/pgp-signature" (820 bytes)
