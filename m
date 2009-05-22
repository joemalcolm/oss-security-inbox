X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/05/22/12
Message-ID: <20090522204252.GA18099@galadriel.inutil.org>
Date: Fri, 22 May 2009 22:42:52 +0200
From: Moritz Muehlenhoff <jmm@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: Linux kernels and security issues?
Content-Type: text/plain; charset=utf-8

On Fri, May 22, 2009 at 12:19:53AM +0200, Hanno Böck wrote:
> 
> What I'd like to have is a short list of all security relevant changes, 
> including some information giving me hints if I may be affected (i.e. affects 
> core functionality or only a driver, filesystem, protocol I may or may not 
> use). Is there some place in the net providing such information?
> If someone (ocert?) wants to do the free software world a big favor, this 
> would be really a great service.

Debian collects information on all kernel security issues in a public
SVN repo. It contains information on fixed versions, upstream
commits and external information sources (e.g. other distribution bug
trackers). It might be useful to you:
http://svn.debian.org/wsvn/kernel-sec
You can also subscribe to the SVN commit mailing list to get instant
updates.

However, writing verbose advisories on all kernel security issues would
be an Herculean task; we currently track 484 kernel security issues
in the kernel-sec tracker...

Cheers,
        Moritz
