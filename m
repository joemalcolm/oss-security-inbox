X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/10/15/1
Message-ID: <1853108659.325051255573857001.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Wed, 14 Oct 2009 22:30:57 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: "Steven M. Christey" <coley@...us.mitre.org>, Willy Tarreau <w@....eu>
Subject: Re: CVE request kernel: tcf_fill_node() infoleak due to typo in 9ef1d4c7
Content-Type: text/plain; charset=utf-8


----- "Eugene Teo" <eugene@...hat.com> wrote:

> Eugene Teo wrote:
> > [...]
> >>   CVE-2005-4881 - tc_fill_qdisc()  (at least)
> > 
> > This requires http://patchwork.ozlabs.org/patch/35412/ too. There
> was a 
> > typo in the upstream commit 9ef1d4c7.
> 
> I'm not sure but perhaps this needs a new CVE name. This infoleak bug
> was introduced in 2005, but was discovered and fixed recently.
> 

I'm naming this as such:
CVE-2009-3612 incomplete fix for CVE-2005-4881

So please use CVE-2009-3612.

Sorry for the delay.

-- 
    JB
