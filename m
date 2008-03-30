X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/03/30/1
Message-Id: <200803301520.50053.hanno@hboeck.de>
Date: Sun, 30 Mar 2008 15:20:48 +0200
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com, "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE request: phpmyadmin (PMASA-2008-2)
Content-Type: text/plain; charset=utf-8

http://www.phpmyadmin.net/home_page/security.php?issue=PMASA-2008-2

Announcement-ID: PMASA-2008-2
Date: 2008-03-29

Summary:
Credentials disclosure on shared hosts via session data

Description:
We received an advisory from Jim Hermann, and we wish to thank him for his 
work. phpMyAdmin saves sensitive information like the MySQL username and 
password and the Blowfish secret key in session data, which might be 
unprotected on a shared host. 

-- 
Hanno Böck		Blog:		http://www.hboeck.de/
GPG: 3DBD3B20		Jabber/Mail:	hanno@...eck.de

Download attachment "signature.asc " of type "application/pgp-signature" (198 bytes)
