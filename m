X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/09/14/1
Message-Id: <201009140230.05862.hanno@hboeck.de>
Date: Tue, 14 Sep 2010 02:30:05 +0200
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: CVE request: xss in pecl-apc before 3.1.4
Content-Type: text/plain; charset=utf-8

http://pecl.php.net/package-changelog.php?package=APC&release=3.1.4

- Fixed potential XSS in apc.php (Pierre, Matt Chapman)

This is a minor issue as this usually doesn't get installed and should only be 
used for debugging-purposes, but still, deserves a CVE.

-- 
Hanno Böck		Blog:		http://www.hboeck.de/
GPG: 3DBD3B20		Jabber/Mail:	hanno@...eck.de

http://schokokeks.org - professional webhosting

Download attachment "signature.asc " of type "application/pgp-signature" (199 bytes)
