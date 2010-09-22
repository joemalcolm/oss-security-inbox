X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/09/22/1
Message-Id: <201009222051.55865.hanno@hboeck.de>
Date: Wed, 22 Sep 2010 20:51:55 +0200
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: CVE request: clamav < 0.96.3 pdf bounds checking
Content-Type: text/plain; charset=utf-8

As always, clamav doesn't mention security issues in it's release notes, but 
the changelog gives some insight.

The bundled bzip2 code is affected by CVE-2010-0405 which is no surprise.

This however sounds more interesting:
Mon Sep 20 14:50:34 EEST 2010 (edwin)
-------------------------------------
 * libclamav/pdf.c: Add missing boundscheck to pdf code (bb #2226)

The referenced bug report is not public, but it sounds like this deserves a 
CVE.

-- 
Hanno Böck		Blog:		http://www.hboeck.de/
GPG: 3DBD3B20		Jabber/Mail:	hanno@...eck.de

http://schokokeks.org - professional webhosting

Download attachment "signature.asc " of type "application/pgp-signature" (199 bytes)
