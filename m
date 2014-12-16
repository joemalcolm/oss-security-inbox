X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/12/16/3
Message-ID: <20141216170622.6fd5c627@pc>
Date: Tue, 16 Dec 2014 17:06:22 +0100
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: Re: file(1): multiple denial of service issues (resource consumption), CVE-2014-8116 and CVE-2014-8117
Content-Type: text/plain; charset=utf-8

Don't know if this deserves a CVE, but this release also fixes this
fuzzing-found issue:
http://bugs.gw.com/view.php?id=398

Commit:
https://github.com/file/file/commit/59e63838913eee47f5c120a6c53d4565af638158


-- 
Hanno Böck
http://hboeck.de/

mail/jabber: hanno@...eck.de
GPG: BBB51E42

Content of type "application/pgp-signature" skipped
