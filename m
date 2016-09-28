X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/09/28/14
Message-ID: <alpine.GSO.2.20.1609281712500.18003@freddy.simplesystems.org>
Date: Wed, 28 Sep 2016 17:15:53 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@...ple.dallas.tx.us>
To: Tavis Ormandy <taviso@...gle.com>
cc: oss-security@...ts.openwall.com
Subject: Re: ImageMagick identify "d:" hangs
Content-Type: text/plain; charset=utf-8

On Wed, 28 Sep 2016, Tavis Ormandy wrote:
>
> (/etc/passwd) /dumpname load 256 string filenameforall
> $ convert test.gif png:test.png
> <creates a file called test.png containing first line of /etc/passwd>
>
> Also seems to work with gm convert.

It is good that you did not single out just one using program.

This issue seems to afflict any program which invokes Ghostscript in 
general and not just *Magick.  However, 'convert' does offer to write 
a rendered result to an output file.

Bob
-- 
Bob Friesenhahn
bfriesen@...ple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
