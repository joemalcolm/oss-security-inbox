X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/03/11/8
Message-ID: <20130311202557.GB12501@outflux.net>
Date: Mon, 11 Mar 2013 13:25:57 -0700
From: Kees Cook <keescook@...omium.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2013-0914 Linux kernel sa_restorer information leak
Content-Type: text/plain; charset=utf-8

The sa_restorer field is not cleared across exec, allowing parent ASLR
information to leak to children.

https://lkml.org/lkml/2013/3/11/498

-Kees

-- 
Kees Cook
Chrome OS Security
