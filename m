X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/03/11/6
Message-ID: <20130311201829.GA12501@outflux.net>
Date: Mon, 11 Mar 2013 13:18:29 -0700
From: Kees Cook <keescook@...omium.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2013-0913 Linux kernel i915 integer overflow
Content-Type: text/plain; charset=utf-8

This flaw could lead to a kernel heap overflow by processes with access to
the DRM driver:

https://lkml.org/lkml/2013/3/11/501

-Kees

-- 
Kees Cook
Chrome OS Security
