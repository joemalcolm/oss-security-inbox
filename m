X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/10/05/12
Message-ID: <alpine.GSO.2.20.1610051214000.29692@freddy.simplesystems.org>
Date: Wed, 5 Oct 2016 12:24:46 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@...ple.dallas.tx.us>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request - multiple ghostscript -dSAFER sandbox problems
Content-Type: text/plain; charset=utf-8

On Wed, 5 Oct 2016, Hanno Böck wrote:
>
> I was surprised to see evince in this list. It uses poppler for pdf and
> libspectre for postscript, so there seems to be no use of
> ghostscript (maybe in an older version).

There is only one open-sourced Postscript interpreter (Ghostscript) 
that I am aware of.

There are perhaps two open-sourced PDF interpreters available 
(Ghostscript and derivatives of 'xpdf' like 'poppler').

ImageMagick and GraphicsMagick are depending on Ghostscript.

Since Postscript is a format commonly sent to printers, many programs 
produce it, and thus it is used as an intermediate format.  The 
typical use case is for ImageMagick/GraphicsMagick to automatically 
run an external utility which converts from the format being read into 
Postscript, then Ghostscript is used to convert it to a raster format 
(e.g. PNM), and then the raster format is read by 
ImageMagick/GraphicsMagick before being output to the final format.

Disabling Ghostscript or requiring user input to proceed will cause a 
lot of breakage.

Bob
-- 
Bob Friesenhahn
bfriesen@...ple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
