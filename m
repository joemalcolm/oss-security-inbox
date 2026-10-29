X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/29/4
Message-ID: <92073589-e413-4692-850a-c5b76fac5ae7@oracle.com>
Date: Thu, 29 Oct 2026 10:56:51 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: CPython [CVE-2026-116566] socket.getaddrinfo() accepts embedded null bytes in host and port
Content-Type: text/plain; charset=utf-8




-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2026-116566] socket.getaddrinfo() accepts 
embedded null bytes in host and port
Date: 	Thu, 29 Oct 2026 17:46:30 +0000
From: 	Seth Larson <seth@...hon.org>
Reply-To: 	security-sig@...hon.org
To: 	security-announce@...hon.org

There is a MEDIUM severity vulnerability affecting CPython.

socket.getaddrinfo() previously accepted null bytes within *host* and *port* 
parameters which can cause the values to be silently truncated.

Please see the linked CVE ID for the latest information on affected versions:

* https://www.cve.org/CVERecord?id=CVE-2026-116566
* https://github.com/python/cpython/pull/160899
_______________________________________________
Security-announce mailing list -- security-announce@...hon.org
https://mail.python.org/mailman3//lists/security-announce.python.org

