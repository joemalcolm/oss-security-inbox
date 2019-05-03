X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/05/03/3
Message-ID: <20190503174218.79d22fbc@computer>
Date: Fri, 3 May 2019 17:42:18 +0200
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: XSS via EXIF tag in Serendipity blog
Content-Type: text/plain; charset=utf-8

Hi,

I reported some XSS issues via EXIF tags in the Serendipity blog
software:
https://github.com/s9y/Serendipity/issues/598

These have now been fixed:
https://blog.s9y.org/archives/282-Serendipity-2.1.5-released.html

This is backend XSS and only relevant if you have multiple authors or
upload potentially untrusted image files.

-- 
Hanno Böck
https://hboeck.de/

mail/jabber: hanno@...eck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
