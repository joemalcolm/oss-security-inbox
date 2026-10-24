X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/24/5
Message-ID: <20095426-bfb6-495b-92a3-66f2fd439895@oracle.com>
Date: Sat, 24 Oct 2026 09:13:12 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: [CVE-2026-115557] Distrust compromised intermediate certificates in Python ssl module
Content-Type: text/plain; charset=utf-8

-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2026-115557] Distrust compromised intermediate 
certificates in ssl module
Date: 	Sat, 24 Oct 2026 14:20:01 +0000
From: 	Seth Larson <seth@...hon.org>
Reply-To: 	security-sig@...hon.org
To: 	security-announce@...hon.org

Python has added a denylist for known compromised certificates to the "ssl" 
module to ensure user safety even without certificate revocation configured. 
Known compromised certificates on this denylist will automatically be rejected 
regardless of the SSLContext policy configuration.

Please see the linked CVE ID for more information:

* https://www.cve.org/CVERecord?id=CVE-2026-115557
* https://github.com/python/cpython/pull/160042

_______________________________________________
Security-announce mailing list -- security-announce@...hon.org
https://mail.python.org/mailman3//lists/security-announce.python.org

