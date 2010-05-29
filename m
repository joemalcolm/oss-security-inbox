X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/05/29/2
Message-ID: <20100529144718.GA27720@pcpool00.mathematik.uni-freiburg.de>
Date: Sat, 29 May 2010 16:47:18 +0200
From: "Bernhard R. Link" <brlink@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: ghostscript and gv
Content-Type: text/plain; charset=utf-8

* Ludwig Nussel <ludwig.nussel@...e.de> [100528 12:05]:
> Upstream suggested to use -P- in addition to -dSAFER.

Either I mix something up or that option does not even help:

With the Debian lenny version I get:

$ touch gs_init.ps
$ /usr/bin/gs -P- notneeded.ps
GPL Ghostscript 8.62: Initialization file gs_init.ps does not begin with an integer.

indicating that the gs_init.ps is looked for in the current directory
even with -P-.

And that also seems to be executed:
$ ls doh
ls: cannot access doh: No such file or directory
$ cat gs_init.ps
862
(doh) (w) file
$ /usr/bin/gs -P-
$ ls doh
doh
