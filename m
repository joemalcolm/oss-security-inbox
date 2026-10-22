X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/22/33
Message-ID: <0e931e7e-5d38-471e-b46f-9173a8ce461b@oracle.com>
Date: Thu, 22 Oct 2026 15:46:13 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: CPython: [CVE-2026-114583] tarfile.tar_filter path traversal bypass allows writing outside the extraction directory
Content-Type: text/plain; charset=utf-8




-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2026-114583] tarfile.tar_filter path traversal 
bypass allows writing outside the extraction directory
Date: 	Thu, 22 Oct 2026 21:35:28 +0100
From: 	Stan Ulbrych via Security-announce <security-announce@...hon.org>
Reply-To: 	security-sig@...hon.org
To: 	security-announce@...hon.org
CC: 	Stan Ulbrych <stanulbrych@...il.com>

There is a MEDIUM severity vulnerability affecting CPython.

tarfile.tar_filter could be bypassed using crafted link entries, including 
symlinks with empty or directory-like names, to redirect later archive members 
outside the intended extraction directory. This allowed a malicious tar archive 
to cause tarfile.extractall() with filter="tar" to write files outside the 
destination directory, subject to the permissions of the extracting process.

This is the tarfile.tar_filter counterpart of CVE-2026-7774, which covered 
tarfile.data_filter.

Please see the linked CVE ID for the latest information on affected versions:

* https://www.cve.org/CVERecord?id=CVE-2026-114583
* https://github.com/python/cpython/pull/160098

_______________________________________________
Security-announce mailing list -- security-announce@...hon.org
https://mail.python.org/mailman3//lists/security-announce.python.org
