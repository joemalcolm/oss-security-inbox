X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/09/25
Message-ID: <e94244d0-2c93-4c1f-b198-e7afffa31047@oracle.com>
Date: Mon, 9 Nov 2026 11:03:09 -0800
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: CPython: [CVE-2026-19552] ssl.get_server_certificate(addr, ca_certs=...) verifies the chain but never the identity
Content-Type: text/plain; charset=utf-8




-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2026-19552] ssl.get_server_certificate(addr, ca_certs=...) verifies the chain but never the identity
Date: 	Mon, 9 Nov 2026 14:12:16 +0000
From: 	Seth Larson <seth@...hon.org>
Reply-To: 	security-sig@...hon.org
To: 	security-announce@...hon.org

There is a LOW severity vulnerability affecting CPython.

When ca_certs parameter was supplied to ssl.get_server_certificate() function, the identity of the certificate is not checked.

Please see the linked CVE ID for the latest information on affected versions:

* https://www.cve.org/CVERecord?id=CVE-2026-19552
* https://github.com/python/cpython/pull/161507

_______________________________________________
Security-announce mailing list -- security-announce@...hon.org
https://mail.python.org/mailman3//lists/security-announce.python.org

