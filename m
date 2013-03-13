X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/03/13/9
Message-ID: <CAN_LGv1CB91rSS-RChGyvVKiv9CEvN95g1Sjh8DEBnqSi7NX2g@mail.gmail.com>
Date: Wed, 13 Mar 2013 22:04:59 +0600
From: "Alexander E. Patrakov" <patrakov@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2013-0913 Linux kernel i915 integer overflow
Content-Type: text/plain; charset=utf-8

2013/3/12 Kees Cook <keescook@...omium.org>:
> This flaw could lead to a kernel heap overflow by processes with access to
> the DRM driver:
>
> https://lkml.org/lkml/2013/3/11/501

Given that FreeBSD also has some sort of i915kms kernel driver now, is
it also vulnerable?

-- 
Alexander E. Patrakov
Not running FreeBSD
