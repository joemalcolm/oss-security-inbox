X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/10/02/1
Message-ID: <1411451788.1386081254443874297.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Thu, 1 Oct 2009 20:37:54 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley <coley@...re.org>
Subject: Re: CVE Request (kernel)
Content-Type: text/plain; charset=utf-8


----- "Josh Bressers" <bressers@...hat.com> wrote:

> Hi Steve,
> 
> There is an information leak issue in the Linux Kernel:
> http://lkml.org/lkml/2009/10/1/164
> 
> It seems that an ia32 process running on an ia64 machine could see
> register contents from a previous process.
> 

Argh, not ia64, x86_64.

Sorry for the confusion.

-- 
    JB
