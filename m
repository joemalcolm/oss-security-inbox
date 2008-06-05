X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/06/05/3
Message-ID: <87lk1kb4w2.fsf@mid.deneb.enyo.de>
Date: Thu, 05 Jun 2008 11:35:57 +0200
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Cc: Robert Buchholz <rbu@...too.org>
Subject: Re: Python Unsafe Module Loading
Content-Type: text/plain; charset=utf-8

* Ned Ludd:

> Re: (1)
> How this limited to interactive shells? Our portage/emerge being 
> directly not vuln is left to near sheer luck that Nick.C opted to shove 
> a path into our portage module a-long time ago.. But our tools are 
> questionable as it all depends on load order..
>
> More examples:
>
> solar@...ia /tmp $ touch re.so
> solar@...ia /tmp $ cat foo.py 
> import string
> print "foo"
>
> solar@...ia /tmp $ python foo.py
> Traceback (most recent call last):
>   File "foo.py", line 1, in ?
>     import string
>   File "/usr/lib/python2.4/string.py", line 83, in ?
>     import re as _re
> ImportError: /tmp/re.so: file too short
> solar@...ia /tmp $ ls -l re.so 
> -rw-r--r-- 1 solar solar 0 Jun  5 01:22 re.so

I think this is actually case (2) because it's not the current directory
which is on the search path, but the directory in which the script
resides.  They just happen to be the same in your example.

I think the behavior for "python -c" ought to be fixed, though.
