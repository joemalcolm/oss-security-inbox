X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/11/17/1
Message-Id: <201011170928.41646.ludwig.nussel@suse.de>
Date: Wed, 17 Nov 2010 09:28:41 +0100
From: Ludwig Nussel <ludwig.nussel@...e.de>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request -- Mercurial --Doesn't verify subject Common Name properly
Content-Type: text/plain; charset=utf-8

Ben Laurie wrote:
> On 15 November 2010 21:58, Steven M. Christey <coley@...us.mitre.org> wrote:
> > Ouch, this is painful for a number of reasons.
> >
> > Maybe Python "should" get the CVE, but the decision to push the issue to
> > application developers means that those developers will each have to provide
> > fixes, and software consumers will have to track these related vulns at the
> > application level.
> 
> It would certainly be safer if Python did the test by default and
> applications had to explicitly turn it off...

Python doesn't verify certificates by default either IIRC. I guess python
simply follows openssl (mis)behavior here. Well, lame excuse anyways.

cu
Ludwig

-- 
 (o_   Ludwig Nussel
 //\   
 V_/_  http://www.suse.de/
SUSE LINUX Products GmbH, GF: Markus Rex, HRB 16746 (AG Nuernberg)
