X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/12/21/1
Message-Id: <200912211828.27894.hanno@hboeck.de>
Date: Mon, 21 Dec 2009 18:28:27 +0100
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: CVE request: Serendipity < 1.5 upload of files with *.php.* possible
Content-Type: text/plain; charset=utf-8

From 1.5 release notes:
# Disallow uploading any files that contain ".php." in the filename for extra 
security with Apache MimeMagic-Modules

See this comment also:
http://blog.s9y.org/archives/211-Serendipity-1.5-released.html#c3064



(it's probably worth looking at other apps if they are vulnerable to this)


-- 
Hanno Böck		Blog:		http://www.hboeck.de/
GPG: 3DBD3B20		Jabber/Mail:	hanno@...eck.de

http://schokokeks.org - professional webhosting

Download attachment "signature.asc " of type "application/pgp-signature" (199 bytes)
