X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/09/20/1
Message-Id: <201009201406.05890.hanno@hboeck.de>
Date: Mon, 20 Sep 2010 14:06:05 +0200
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: CVE request: egroupware remote code and xss
Content-Type: text/plain; charset=utf-8

http://www.egroupware.org/news?item=93

Nahuel Grisolia from CYBSEC S.A. Security Systems found two security
problems in EGroupware:

    one is a serious remote command execution (allowing to run arbitrary 
command on the web server by simply issuing a HTTP request!).
    the other a reflected cross-site scripting (XSS).

Here's the original advisory for both issues:
http://www.exploit-db.com/exploits/11777/


-- 
Hanno Böck		Blog:		http://www.hboeck.de/
GPG: 3DBD3B20		Jabber/Mail:	hanno@...eck.de

http://schokokeks.org - professional webhosting

Download attachment "signature.asc " of type "application/pgp-signature" (199 bytes)
