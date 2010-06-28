X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/06/28/7
Message-ID: <892728856.1380781277756766548.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Mon, 28 Jun 2010 16:26:06 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE Request -- libpng v1.4.3 and v1.2.44 -- memory leak while processing PNG image with malformed sCAL chunks
Content-Type: text/plain; charset=utf-8


----- "Jan Lieskovsky" <jlieskov@...hat.com> wrote:

> Hi Steve, vendors,
> 
>    libpng upstream has released latest v1.4.3 and v1.2.44 versions,
> addressing two
> security issues:
> [a], out-of-bounds write to memory -- this already got a CVE id of
> "CVE-2010-1205",
> [b], memory-leak bug, involving images with malformed sCAL chunks,
> which could
>     lead to an application crash.
> 
> References:
>    [1] http://www.libpng.org/pub/png/libpng.html
>    [2] https://bugzilla.redhat.com/show_bug.cgi?id=608644
> 
> Steve, could you allocate a CVE id for the [b] issue?
> 

Please use CVE-2010-2249 for issue [b].

Thanks.

-- 
    JB
