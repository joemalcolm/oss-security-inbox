X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/09/09/5
Message-ID: <1695997.I5q5FJauoq@willoughby>
Date: Fri, 09 Sep 2016 15:59:04 +0200
From: Agostino Sarubbo <ago@...too.org>
To: oss-security@...ts.openwall.com
Cc: Bob Friesenhahn <bfriesen@...ple.dallas.tx.us>
Subject: Re: GraphicsMagick 1.3.25 fixes some security issues
Content-Type: text/plain; charset=utf-8

On Tuesday 06 September 2016 20:50:23 Bob Friesenhahn wrote:
> 4. The TIFF reader had a bug pertaining to use of TIFFGetField() when 
> a 'count' value is returned.  The bug caused a heap read overflow (due 
> to using strlcpy() to copy a possibly unterminated string) which could 
> allow an untrusted file to crash the software.


For who is interested, the details of the issue N° 4 are documented here:

https://blogs.gentoo.org/ago/2016/08/23/graphicsmagick-two-heap-based-buffer-overflow-in-readtiffimage-tiff-c/[1] 


The same block of code, which was rewritten because of the overflows, 
contains also a null pointer access:

https://blogs.gentoo.org/ago/2016/09/07/graphicsmagick-null-pointer-dereference-in-magickstrlcpy-utility-c/[2] 


Unfortunately this problem was not reproducible by Mr Friesenhahn, but 
seems to be disappeared after the commit which fixed the overflows.

--
Agostino

--------
[1] https://blogs.gentoo.org/ago/2016/08/23/graphicsmagick-two-heap-based-buffer-overflow-in-readtiffimage-tiff-c/
[2] https://blogs.gentoo.org/ago/2016/09/07/graphicsmagick-null-pointer-dereference-in-magickstrlcpy-utility-c/

