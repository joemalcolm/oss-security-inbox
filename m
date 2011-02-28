X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/02/28/15
Message-Id: <20110228165401.849106fa.michael.s.gilbert@gmail.com>
Date: Mon, 28 Feb 2011 16:54:01 -0500
From: Michael Gilbert <michael.s.gilbert@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: cve request: eglibc memory corruption
Content-Type: text/plain; charset=utf-8

On Mon, 28 Feb 2011 15:55:34 -0500 (EST) Josh Bressers wrote:

> ----- Original Message -----
> > Hi,
> > 
> > An issue was disclosed for eglibc [0],[1]. Please assign a CVE id for
> > it.
> > 
> > Thanks,
> > Mike
> > 
> > [0] http://seclists.org/fulldisclosure/2011/Feb/635
> > [1] http://bugs.debian.org/615120
> 
> It should be noted this also affects glibc.
> Does anyone know when this was fixed in glibc by chance? The bug has no details.

According to a follow-up message to the thread above [0], this was fixed
via [1], which is the patch Debian used to fix the issue.

Best wishes,
Mike

[0]http://seclists.org/fulldisclosure/2011/Feb/644
[1]http://sourceware.org/git/?p=glibc.git;a=commitdiff;h=f15ce4d8dc139523fe0c273580b604b2453acba6
