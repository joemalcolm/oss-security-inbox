X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/10/10/8
Message-ID: <11222d94-037d-b88a-846a-24f08ee334ef@oracle.com>
Date: Wed, 10 Oct 2018 08:46:05 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com, Hanno Böck <hanno@...eck.de>
Subject: Re: ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)
Content-Type: text/plain; charset=utf-8

On 10/10/18 05:53 AM, Hanno Böck wrote:
> Nautilus is trying to solve this by sandboxing the thumbnailers.
> However this depends on bubblewrap and is currently fail-open, i.e. if
> bubblewrap is not available it will not disable the thumbnailing, it
> will just not sandbox it. In practice this means it's often not
> sandboxed. I doubt this will change any time soon.

And bubblewrap is very specific to running on a Linux kernel, so users
of GNOME on top of other kernels are also left unprotected by it.

-- 
	-Alan Coopersmith-               alan.coopersmith@...cle.com
	 Oracle Solaris Engineering - https://blogs.oracle.com/alanc
