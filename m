X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/07/02/12
Message-ID: <71031608.1871771278097554952.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Fri, 2 Jul 2010 15:05:54 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE Request -- Roundup: XSS by processing PageTemplate template for a named page
Content-Type: text/plain; charset=utf-8

Please use CVE-2010-2491

Thanks.

-- 
    JB

----- "Jan Lieskovsky" <jlieskov@...hat.com> wrote:

> Hi Steve, vendors,
> 
>    A deficiency was found in the way Roundup, simple and flexible
> issue-tracking system,
> processed PageTemplate templates for named pages. A remote attacker
> could
> use this flaw to conduct cross-site scripting (XSS) attacks by
> tricking
> a local, authenticated user into visiting a specially-crafted web
> page.
> 
> References:
>    [1] http://bugs.gentoo.org/show_bug.cgi?id=326395
> 
> Upstream changeset:
>    [2]
> http://roundup.svn.sourceforge.net/viewvc/roundup?view=revision&revision=4486
> 
> Could you allocate a CVE identifier for this?
> 
> Thanks && Regards, Jan.
> --
> Jan iankko Lieskovsky / Red Hat Security Response Team
