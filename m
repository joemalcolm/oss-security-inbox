X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/10/30
Message-ID: <f1926722-12d0-471c-b83c-4026dee0adb2@oracle.com>
Date: Tue, 10 Nov 2026 14:30:25 -0800
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: CPython: [CVE-2026-115791] Prevent shadowing stdlib in gzip/tarfile/zipfile CLI
Content-Type: text/plain; charset=utf-8




-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2026-115791] Prevent shadowing stdlib in gzip/tarfile/zipfile CLI
Date: 	Tue, 10 Nov 2026 17:00:26 +0100
From: 	Victor Stinner <vstinner@...hon.org>
Reply-To: 	security-sig@...hon.org
To: 	security-announce@...hon.org


There is a MEDIUM severity vulnerability affecting CPython.

When tarfile or zipfile command line interface (CLI) is used to
decompress an archive, a Python script shadowing the stdlib can be
created. Then if an error occurs during decompressing the next file,
the newly created Python script is executed. This is especially true
if the created Python is called traceback.py. The problem is that
Python adds the current directory to sys.path when python -m MODULE is
run, and the archive is also decompressed in the current directory.

The fix removes sys.path[0] in gzip, tarfile and zipfile command line
interface to prevent shadowing standard library modules from extracted
files.

Please see the linked CVE ID for the latest information on affected versions:

* https://www.cve.org/CVERecord?id=CVE-2026-115791
* https://github.com/python/cpython/issues/161705
_______________________________________________
Security-announce mailing list -- security-announce@...hon.org
https://mail.python.org/mailman3//lists/security-announce.python.org


