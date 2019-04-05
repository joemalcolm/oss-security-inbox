X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/04/05/1
Message-ID: <20190405114501.1bb98c2a@computer>
Date: Fri, 5 Apr 2019 11:45:01 +0200
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: XSS in roundup bug tracker 404 page
Content-Type: text/plain; charset=utf-8

Hi,

I recently discovered that the python bug tracker had a trivial
reflected Cross Site Scripting vulnerability on the 404 error page.

It essentially just reflected the URL path, so anything like
http://hostname/<img src=x onerror=alert(1)>
(properly URL-encoded, but browsers do this automatically)
would result in XSS.

The software python is using here is the Roundup issue tracker, it's
been reported there as well [2] and fixed in their repo (but no release
yet).

[1] https://github.com/python/bugs.python.org/issues/34
[2] https://issues.roundup-tracker.org/issue2551035

-- 
Hanno Böck
https://hboeck.de/

mail/jabber: hanno@...eck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
