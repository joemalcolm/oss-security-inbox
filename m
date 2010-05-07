X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/05/07/9
Message-ID: <998299634.765771273257758457.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Fri, 7 May 2010 14:42:38 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley <coley@...re.org>
Subject: Re: CVE Assignment (gnustep)
Content-Type: text/plain; charset=utf-8


----- "Dan Rosenberg" <dan.j.rosenberg@...il.com> wrote:

> Note that there's a second bug in there - a potentially exploitable
> integer overflow leading to heap overflow when reading a file (or
> socket) with a very large number of lines, causing several malloc()
> calls to underallocate space.  This should probably receive a second
> CVE.
> 
> http://article.gmane.org/gmane.comp.lib.gnustep.bugs/12379
> 

Ahh, I missed that one. I see it now, thanks.

Use CVE-2010-1620 for the integer overflow.

Thanks.

-- 
    JB
