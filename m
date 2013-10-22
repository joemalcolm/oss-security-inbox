X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/10/22/12
Message-ID: <20131022224204.GC2810@redhat.com>
Date: Tue, 22 Oct 2013 16:42:04 -0600
From: Vincent Danen <vdanen@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: another glibc flaw, similar to CVE-2013-1914, but in AF_INET6
Content-Type: text/plain; charset=utf-8

It was found that the CVE-2013-1914 fix in glibc for AF_UNSPEC missed a
an identical case but with AF_INET6.  Could a CVE be assigned to this?
This issue has the same impact as CVE-2013-1914.

References:

https://sourceware.org/ml/libc-alpha/2013-10/msg00733.html
https://bugzilla.redhat.com/show_bug.cgi?id=1022280

Thanks.

-- 
Vincent Danen / Red Hat Security Response Team 
