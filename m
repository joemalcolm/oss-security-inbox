X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/23/18
Message-ID: <d452a84c-0ff7-49b8-b3cd-592a5403b161@oracle.com>
Date: Mon, 23 Nov 2026 10:09:24 -0800
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: CPython [CVE-2026-107784] tarfile extraction filters accept drive-relative paths on Windows
Content-Type: text/plain; charset=utf-8




-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2026-107784] tarfile extraction filters accept 
drive-relative paths on Windows
Date: 	Mon, 23 Nov 2026 12:40:09 +0000
From: 	Stan Ulbrych via Security-announce <security-announce@...hon.org>
Reply-To: 	security-sig@...hon.org
To: 	security-announce@...hon.org
CC: 	Stan Ulbrych <stanulbrych@...il.com>

There is a MEDIUM severity vulnerability affecting CPython.

On Windows, the tarfile "tar" and "data" extraction filters did not reject
member names or link targets that have a drive but no root, such as "C:foo".
When extracting to a relative destination, such a member was written to the
current working directory of that drive instead of the destination, and a
symbolic link with such a target pointed outside the destination.
The filters now refuse these member names and link targets with
AbsolutePathError and AbsoluteLinkError.

Please see the linked CVE ID for the latest information on affected versions:

* https://www.cve.org/CVERecord?id=CVE-2026-107784
* https://github.com/python/cpython/pull/161334

_______________________________________________
Security-announce mailing list -- security-announce@...hon.org
https://mail.python.org/mailman3//lists/security-announce.python.org

