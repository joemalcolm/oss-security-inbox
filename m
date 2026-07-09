X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/09/4
Message-ID: <6fe5801a-70f8-4c72-89b3-f46677602b07@oracle.com>
Date: Thu, 9 Jul 2026 10:40:24 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: [CVE-2026-15308] Incremental HTMLParser allows CPU-exhaustion DoS via repeated unterminated markup declarations
Content-Type: text/plain; charset=utf-8

https://www.cve.org/CVERecord?id=CVE-2026-15308 currently lists all
versions before Python 3.15.0 as affected.


-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2026-15308] Incremental HTMLParser allows CPU-exhaustion DoS via repeated unterminated markup declarations
Date: 	Thu, 9 Jul 2026 17:08:21 +0000
From: 	Seth Larson <seth@...hon.org>
Reply-To: 	security-sig@...hon.org
To: 	security-announce@...hon.org



There is a HIGH severity vulnerability affecting CPython.

The incremental HTML parser (html.parser.HTMLParser) allows for CPU denial-of-service through repeated unterminated markup declarations when processing uncontrolled data.

Please see the linked CVE ID for the latest information on affected versions:

* https://www.cve.org/CVERecord?id=CVE-2026-15308
* https://github.com/python/cpython/pull/153031

_______________________________________________
Security-announce mailing list -- security-announce@...hon.org
https://mail.python.org/mailman3//lists/security-announce.python.org

