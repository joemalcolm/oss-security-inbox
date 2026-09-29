X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/29/40
Message-ID: <c1719aaa-1b58-49a7-82b8-78b5f56437e6@oracle.com>
Date: Tue, 29 Sep 2026 13:05:50 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: CPython [CVE-2026-12345] Race condition in tempfile.TemporaryDirectory cleanup allows deleting files outside the temporary directory
Content-Type: text/plain; charset=utf-8




-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2026-12345] Race condition in 
tempfile.TemporaryDirectory cleanup allows deleting files outside the temporary 
directory
Date: 	Tue, 29 Sep 2026 18:28:51 +0100
From: 	Stan Ulbrych via Security-announce <security-announce@...hon.org>
Reply-To: 	security-sig@...hon.org
To: 	security-announce@...hon.org
CC: 	Stan Ulbrych <stanulbrych@...il.com>

There is a MEDIUM severity vulnerability affecting CPython.

The cleanup of tempfile.TemporaryDirectory is vulnerable to a race condition. An 
attacker who can modify the tree during cleanup can replace a directory with a 
symbolic link, causing files outside of the temporary directory to be deleted or 
have their permissions and file flags reset, with the privileges of the process 
performing the cleanup.

Note that platforms where shutil.rmtree.avoids_symlink_attacks is false, remain 
affected, and file flags may still be reset outside of the tree on all platforms.

Please see the linked CVE ID for the latest information on affected versions:

* https://www.cve.org/CVERecord?id=CVE-2026-12345
* https://github.com/python/cpython/pull/157580

_______________________________________________
Security-announce mailing list -- security-announce@...hon.org
https://mail.python.org/mailman3//lists/security-announce.python.org
