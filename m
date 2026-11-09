X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/09/24
Message-ID: <29875fd2-3c34-47ea-9f01-3d2f6eb00135@oracle.com>
Date: Mon, 9 Nov 2026 11:01:59 -0800
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: CPython: [CVE-2026-124249] http.cookiejar deletes cookies of other domains via expired Set-Cookie
Content-Type: text/plain; charset=utf-8




-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2026-124249] http.cookiejar deletes cookies of 
other domains via expired Set-Cookie
Date: 	Sat, 7 Nov 2026 21:58:22 +0200
From: 	Kirill Podoprigora via Security-announce <security-announce@...hon.org>
Reply-To: 	security-sig@...hon.org
To: 	security-announce@...hon.org
CC: 	Kirill Podoprigora <kirill.bast@...il.com>

There is a MEDIUM severity vulnerability affecting CPython.

http.cookiejar.CookieJar deleted a stored cookie when a response carried an 
already expired Set-Cookie header for it, using the Domain and Path attributes 
from the header without consulting the cookie policy. A server could therefore 
delete cookies belonging to other domains from a shared
cookie jar, such as the one used by urllib's HTTPCookieProcessor. The fix 
consults the cookie policy before an expired cookie may delete an existing one, 
as required by RFC 6265 section 5.3.

Please see the linked CVE ID for the latest information on affected versions:

* https://www.cve.org/CVERecord?id=CVE-2026-124249
* https://github.com/python/cpython/pull/161570

_______________________________________________
Security-announce mailing list -- security-announce@...hon.org
https://mail.python.org/mailman3//lists/security-announce.python.org

