X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/03/22/6
Message-ID: <4F6AAFC1.1000709@redhat.com>
Date: Wed, 21 Mar 2012 22:51:13 -0600
From: Kurt Seifried <kseifried@...hat.com>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: CVE for OpenBSD random() bug?
Content-Type: text/plain; charset=utf-8

https://banu.com/blog/42/openbsd-bug-in-the-random-function/

http://www.openbsd.org/cgi-bin/cvsweb/src/lib/libc/stdlib/random.c#rev1.16

Fix a bug where random() always returns 0 when srandom() is seeded
with 0.  Use 1 and not 0 as the first element of the state array,
similar to what glibc does.  OK nicm@

It would seem this fits into the "weaker then advertised" class of
security problem. Thoughts/comments (anyone strongly against this)?

-- 
Kurt Seifried Red Hat Security Response Team (SRT)
