X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/04/14/5
Message-ID: <20110414103852.6ff74d3e@orphan>
Date: Thu, 14 Apr 2011 10:38:52 +0200
From: Tomas Hoger <thoger@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: Closed list
Content-Type: text/plain; charset=utf-8

Hi Armin!

On Wed, 13 Apr 2011 05:59:20 -1000 akuster wrote:

> > It's clear that one of the membership requirements is now producing
> > security updates. 
> 
> What method of proving this would be acceptable? screen shot,
> temporary access to our site, public list or other?

A quick idea, rather than a real guidance:  Several vendors offer some
sort of public CVE database that can be used to search for vendor's
updates to address particular flaw.  If you're already tagging your
updates with CVE ids, this may not be hard to provide.  Not because
folks on this list ask you to do so, but because it's likely to provide
a significant benefit to your customers with little extra cost/effort on
top of what you already do.

SUSE's database is probably closest to what may work for you as well.
CVE info is split by a patched product+version, with links to
customer-only download site for the enterprise products.

http://support.novell.com/security/cve/

-- 
Tomas Hoger / Red Hat Security Response Team
