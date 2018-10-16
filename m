X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/10/16/6
Message-ID: <20181016175742.0d898390@jabberwock.cb.piermont.com>
Date: Tue, 16 Oct 2018 17:57:42 -0400
From: "Perry E. Metzger" <perry@...rmont.com>
To: Hanno Böck <hanno@...eck.de>
Cc: oss-security@...ts.openwall.com
Subject: Re: ghostscript: 1Policy operator gives access to .forceput CVE-2018-18284
Content-Type: text/plain; charset=utf-8

On Tue, 16 Oct 2018 22:50:24 +0200 Hanno Böck <hanno@...eck.de> wrote:
> On Tue, 16 Oct 2018 15:57:22 -0400
> "Perry E. Metzger" <perry@...rmont.com> wrote:
> 
> > Again, given that PostScript is an archival format for a lot of
> > documents, wouldn't a version of ghostscript with all the ability
> > to do anything dangerous removed from the interpreter at compile
> > time be rational?  
> 
> I think nobody here will disagree with you that this would be good
> to have.
> The question is: Who's gonna do it? Will you?

Good question. One obstacle for me is a lack of familiarity with the
codebase (which others here seem to have), but on the other hand, I
appear to have more motivation.

Perry
-- 
Perry E. Metzger		perry@...rmont.com
