X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/02/06/5
Message-ID: <20140206095207.05d3d868@hboeck.de>
Date: Thu, 6 Feb 2014 09:52:07 +0100
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: python-gnupg before 0.3.5 shell injection
Content-Type: text/plain; charset=utf-8

Upstream has now released 0.3.6:
Fixed  Issue #98 : Rectified problems with earlier fix for shell
injection.
https://code.google.com/p/python-gnupg/

CVE request is still pending. I think we now need two:
1. Shell injection partly fixed in 0.3.5.
2. Incomplete fix for shell injection fixed in 0.3.6.

-- 
Hanno Böck
http://hboeck.de/

mail/jabber: hanno@...eck.de
GPG: BBB51E42

Download attachment "signature.asc" of type "application/pgp-signature" (837 bytes)
