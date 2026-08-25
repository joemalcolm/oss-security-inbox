X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/25/10
Message-ID: <de7959d5-a863-414e-8b56-81f2011e0060@oracle.com>
Date: Tue, 25 Aug 2026 16:35:37 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: [CVE-2026-19672] CPython: tarfile extraction filter bypass allows creation of directories outside the destination
Content-Type: text/plain; charset=utf-8




-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2026-19672] tarfile extraction filter bypass allows creation of directories outside the destination
Date: 	Wed, 19 Aug 2026 14:56:06 +0100
From: 	Stan Ulbrych via Security-announce <security-announce@...hon.org>
Reply-To: 	security-sig@...hon.org
To: 	security-announce@...hon.org
CC: 	Stan Ulbrych <stanulbrych@...il.com>

There is a MEDIUM severity vulnerability affecting CPython.

The tarfile module's tar and data extraction filters created directories outside
the destination for members whose name leaves the destination and returns to it,
such as ../evil/../dest/sub/file. The containment check used the resolved path,
but intermediate directories were created from the name as given.

Only empty directories are created outside the destination. Member contents are
still extracted inside it. To return to the destination the member's name must
contain the destination directory's own final component, so extraction into a
secure randomised directory is not affected.

This affects POSIX platforms only. On Windows, .. components are collapsed
before the path reaches the filesystem, so the directories outside the
destination are never created.

Please see the linked CVE ID for the latest information on affected versions:

* https://www.cve.org/CVERecord?id=CVE-2026-19672
* https://github.com/python/cpython/pull/156000

_______________________________________________
Security-announce mailing list -- security-announce@...hon.org
https://mail.python.org/mailman3//lists/security-announce.python.org
