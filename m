X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/18/2
Message-ID: <07a068d3-9ff4-4647-883f-b9327e1ac2ff@oracle.com>
Date: Tue, 18 Aug 2026 09:09:31 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: CPython [CVE-2026-17084] StringPrep algorithm considered Unicode codepoint attributes outside Unicode 3.2.0
Content-Type: text/plain; charset=utf-8

-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2026-17084] StringPrep algorithm considered 
Unicode codepoint attributes outside Unicode 3.2.0
Date: 	Tue, 18 Aug 2026 13:55:39 +0000
From: 	Seth Larson <seth@...hon.org>
Reply-To: 	security-sig@...hon.org
To: 	security-announce@...hon.org

There is a MEDIUM severity vulnerability affecting CPython.

The "stringprep" module didn't process characters from RFC 3454 tables B.2 or 
B.3 correctly: the latest Unicode codepoint attributes were used instead of the 
specified Unicode 3.2.0. This behavior would cause mismatches when processing 
domain names using IDNA 2003 (the "idna" codec) and the in_table_b2() function 
of the "stringprep" module. This only affects domain names containing characters 
that were not previously registered or had their Unicode attributes such as 
case-folding behavior updated since Unicode 3.2.0.

Please see the linked CVE ID for the latest information on affected versions:

* https://www.cve.org/CVERecord?id=CVE-2026-17084
* https://github.com/python/cpython/pull/155293

_______________________________________________
Security-announce mailing list -- security-announce@...hon.org
To unsubscribe send an email to security-announce-leave@...hon.org
https://mail.python.org/mailman3//lists/security-announce.python.org
