X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/08/17
Message-ID: <bbc299d8-d61d-4f03-98a7-544fd0096f27@oracle.com>
Date: Mon, 8 Jun 2026 15:06:19 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: [CVE-2026-9669] CPython: bz2.BZ2Decompressor reuse after error can cause a stack buffer overflow
Content-Type: text/plain; charset=utf-8

The CVE record currently lists versions "affected from 0 before 3.16.0"


-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2026-9669] bz2.BZ2Decompressor reuse after error can cause a stack buffer overflow
Date: 	Mon, 8 Jun 2026 13:07:31 -0700
From: 	Emma Smith <emma@...atyping.dev>
Reply-To: 	security-sig@...hon.org
To: 	security-announce@...hon.org



There is a HIGH severity vulnerability affecting CPython.

bz2.BZ2Decompressor objects could be reused after a decompression error.
If an application caught the resulting OSError and retried with the same decompressor,
crafted input could cause the decompressor to resume from an invalid internal state
and perform out-of-bounds writes to a stack buffer. This could crash the process
when processing untrusted data.

Please see the linked CVE ID for the latest information on affected versions:

*https://www.cve.org/CVERecord?id=CVE-2026-9669
*https://github.com/python/cpython/pull/150600

_______________________________________________
Security-announce mailing list -- security-announce@...hon.org
https://mail.python.org/mailman3//lists/security-announce.python.org


