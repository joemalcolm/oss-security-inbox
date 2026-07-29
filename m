X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/29/7
Message-ID: <644e2e36-ff30-4dff-a77c-305980eecca8@oracle.com>
Date: Wed, 29 Jul 2026 12:08:23 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Fwd: [CVE-2026-13346] pip absolute path traversal during download from malicious package indexes
Content-Type: text/plain; charset=utf-8

https://www.cve.org/CVERecord?id=CVE-2026-13346 currently shows
all pip versions before 26.2 as affected by this CVE.


-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2026-13346] pip absolute path 
traversal during download from malicious package indexes
Date: 	Wed, 29 Jul 2026 18:35:14 +0000
From: 	Seth Larson <seth@...hon.org>
Reply-To: 	security-sig@...hon.org
To: 	security-announce@...hon.org

There is a  MEDIUM severity vulnerability affecting pip.

pip would incorrectly handle doubly-encoded package URLs from indexes 
allowing for files to be installed to arbitrary locations on disk even 
when installing wheels.

This vulnerability requires downloading or installing a package from a 
malicious package index to succeed, malicious packages alone are not 
able to exploit this vulnerability. Note that this vulnerability only 
materially impacts users running `pip download` with the `--only-binary` 
option as installing source distributions from an untrusted index is 
already an unsafe operation that executes code during install time.

Please see the linked CVE ID for the latest information on affected 
versions:

* https://www.cve.org/CVERecord?id=CVE-2026-13346
* https://github.com/pypa/pip/pull/14110

_______________________________________________
Security-announce mailing list -- security-announce@...hon.org
https://mail.python.org/mailman3//lists/security-announce.python.org

