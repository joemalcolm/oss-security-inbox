X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/09/19/2
Message-ID: <20110919112558.4d8d9fac@laverne>
Date: Mon, 19 Sep 2011 11:25:58 +0200
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: CVE request: XSS in status.net before 0.9.9 and 1.0.0beta2
Content-Type: text/plain; charset=utf-8

See
http://status.net/2011/08/02/security-alert-for-all-versions-of-statusnet

"Incorrectly sanitized input from the URL for "tag stream" pages,
combined with incorrect encoding of dynamically-generated JavaScript,
allows an attacker to create a carefully-crafted URL that will execute
arbitrary JavaScript code on other users' browsers."

-- 
Hanno Böck		mail/jabber: hanno@...eck.de
GPG: BBB51E42		http://www.hboeck.de/

Download attachment "signature.asc" of type "application/pgp-signature" (837 bytes)
