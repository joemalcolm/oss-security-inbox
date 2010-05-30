X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/05/30/1
Message-ID: <87k4qlmajr.fsf@mid.deneb.enyo.de>
Date: Sun, 30 May 2010 21:52:56 +0200
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: ghostscript and gv
Content-Type: text/plain; charset=utf-8

* Bernhard R. Link:

> * Ludwig Nussel <ludwig.nussel@...e.de> [100528 12:05]:
>> Upstream suggested to use -P- in addition to -dSAFER.
>
> Either I mix something up or that option does not even help:
>
> With the Debian lenny version I get:
>
> $ touch gs_init.ps
> $ /usr/bin/gs -P- notneeded.ps
> GPL Ghostscript 8.62: Initialization file gs_init.ps does not begin with an integer.

"gs -P- -DSAFER gs_init.ps" works, too, so you can inject the payload
with file-name-preserving user agents.  8-(

Is the general consensus that we should patch this in
viewers/Ghostscript wrappers, and not Ghostscript itself?
