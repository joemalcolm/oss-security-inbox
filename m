X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/06/30
Message-ID: <6a17e5e2-a538-4af7-80e2-728968bf2a56@oracle.com>
Date: Fri, 6 Nov 2026 13:39:29 -0800
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: [CVE-2026-119170] Regression in FIPS enforcement of hash algorithms affecting only Python 3.14.10
Content-Type: text/plain; charset=utf-8


-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2026-119170] Regression in FIPS enforcement of 
hash algorithms affecting only Python 3.14.10
Date: 	Fri, 6 Nov 2026 14:45:25 +0000
From: 	Seth Larson <seth@...hon.org>
Reply-To: 	security-sig@...hon.org
To: 	security-announce@...hon.org

There is a HIGH severity vulnerability affecting CPython.

There was a regression in how FIPS algorithms were enforced for the hashlib 
module. Only users that are using OpenSSL in FIPS mode are affected. Only Python 
3.14.10 is affected, all other Python versions are unaffected.

Please see the linked CVE ID for the latest information on affected versions:

* https://www.cve.org/CVERecord?id=CVE-2026-119170
* https://github.com/python/cpython/pull/160984

_______________________________________________
Security-announce mailing list -- security-announce@...hon.org
https://mail.python.org/mailman3//lists/security-announce.python.org


