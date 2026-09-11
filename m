X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/11/8
Message-ID: <9c9dc417-b37f-4808-9771-13f82033d28f@oracle.com>
Date: Fri, 11 Sep 2026 12:18:22 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: CPython: [CVE-2026-87910] tarfile hardlink fallback ignores custom extraction filter rejection via None
Content-Type: text/plain; charset=utf-8




-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2026-87910] tarfile hardlink fallback ignores 
custom extraction filter rejection via None
Date: 	Fri, 11 Sep 2026 14:24:10 +0200
From: 	Petr Viktorin via Security-announce <security-announce@...hon.org>
Reply-To: 	security-sig@...hon.org
To: 	security-announce@...hon.org
CC: 	Petr Viktorin <encukou@...il.com>

There is a MEDIUM severity vulnerability affecting CPython.

When tarfile extracts a link on a system that doesn't support links, it
falls back to extracting a member from the archive. In this case, the
filter function is run twice: once for the extracted member, and once
with name set to the location of the link.
For one of the calls, the return value was ignored. Instead, the member
should be skipped if either call returns None.

Please see the linked CVE ID for the latest information on affected
versions:

* https://www.cve.org/CVERecord?id=CVE-2026-87910
* https://github.com/python/cpython/pull/157266

_______________________________________________
Security-announce mailing list -- security-announce@...hon.org
https://mail.python.org/mailman3//lists/security-announce.python.org


