X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/14/27
Message-ID: <17526b71-d43a-4fa6-b465-3a6517242ff4@oracle.com>
Date: Mon, 14 Sep 2026 10:56:45 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Cpython: [CVE-2026-82049] tarfile extraction filters allow file modification and content disclosure via hard link to symlink
Content-Type: text/plain; charset=utf-8




-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2026-82049] tarfile extraction filters allow 
file modification and content disclosure via hard link to symlink
Date: 	Mon, 14 Sep 2026 17:59:38 +0100
From: 	Stan Ulbrych via Security-announce <security-announce@...hon.org>
Reply-To: 	security-sig@...hon.org
To: 	security-announce@...hon.org
CC: 	Stan Ulbrych <stanulbrych@...il.com>

There is a HIGH severity vulnerability affecting CPython.

In CPython 3.13 and earlier, the tarfile module's data and tar extraction 
filters are vulnerable to crafted archives containing a hard link to a symbolic 
link. Such archives may cause extraction to modify the permissions or 
modification time of a file outside the destination directory, or expose the 
contents of that file within the extracted tree.

Please see the linked CVE ID for the latest information on affected versions:

* https://www.cve.org/CVERecord?id=CVE-2026-82049
* https://github.com/python/cpython/pull/157192

-- 
Stan Ulbrych  (https://stan.ulbrych.org <https://stan.ulbrych.org>)
_______________________________________________
Security-announce mailing list -- security-announce@...hon.org
https://mail.python.org/mailman3//lists/security-announce.python.org
