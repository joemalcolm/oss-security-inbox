X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/23/6
Message-ID: <1889c8ad-70d3-44dd-9914-53fbbd17fffc@oracle.com>
Date: Tue, 23 Jun 2026 09:32:32 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: [CVE-2026-11940] Cpython: tarfile extraction filter bypass allows escaping the destination directory
Content-Type: text/plain; charset=utf-8




-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2026-11940] tarfile extraction filter bypass 
allows escaping the destination directory
Date: 	Tue, 23 Jun 2026 16:55:19 +0100
From: 	Stan Ulbrych via Security-announce <security-announce@...hon.org>
Reply-To: 	security-sig@...hon.org
To: 	security-announce@...hon.org
CC: 	Stan Ulbrych <stanulbrych@...il.com>



There is a HIGH severity vulnerability affecting CPython.

tarfile.extractall() with the 'data' or 'tar' filter could be bypassed by a 
crafted archive where a hardlink references a symlink stored at a deeper name 
than the hardlink itself.  The extraction fallback validated the symlink at it's 
archived location but recreated it at the hardlink's shallower
path, letting a relative target the filter judged contained escape the 
destination directory.  This allowed a malicious tar archive to create a symlink 
pointing outside the destination, enabling out-of-destination file reads or 
writes. This was an incomplete fix of CVE-2025-4330.

Please see the linked CVE ID for the latest information on affected versions:

* https://www.cve.org/CVERecord?id=CVE-2026-11940
* https://github.com/python/cpython/pull/151559

_______________________________________________
Security-announce mailing list -- security-announce@...hon.org
https://mail.python.org/mailman3//lists/security-announce.python.org

