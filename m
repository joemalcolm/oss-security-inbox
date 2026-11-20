X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/20/12
Message-ID: <9d688919-d1d5-4991-b5ac-8692674b4003@oracle.com>
Date: Fri, 20 Nov 2026 11:29:44 -0800
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: [CVE-2026-133949] pip bundles compromised eMudhra certificates via certifi
Content-Type: text/plain; charset=utf-8




-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2026-133949] pip bundles compromised eMudhra certificates via certifi
Date: 	Fri, 20 Nov 2026 19:08:15 +0000
From: 	Seth Larson <seth@...hon.org>
Reply-To: 	security-sig@...hon.org
To: 	security-announce@...hon.org


There is a CRITICAL severity vulnerability affecting pip.

pip prior to v26.2.2 the certifi bundled with pip contains the compromised eMudhra certificates.

Upgrading to a secure version of pip should be done either by first upgrading Python to a version that rejects the compromised intermediates (<https://www.cve.org/CVERecord?id=CVE-2026-115557>) or use hash pinning with a known-secure version of pip.

Please see the linked CVE ID for the latest information on affected versions:

* https://github.com/advisories/ghsa-6q48-6c7w-9gw2
* https://discuss.python.org/t/information-for-python-users-regarding-emudhra-emsign-ca-certificate-security-incident/109576
* https://www.cve.org/CVERecord?id=CVE-2026-133949
* https://github.com/pypa/pip/pull/14371

_______________________________________________
Security-announce mailing list -- security-announce@...hon.org
https://mail.python.org/mailman3//lists/security-announce.python.org

