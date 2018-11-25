X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/11/25/2
Message-ID: <1690836.rk9JpRbEkN@wanheda>
Date: Sun, 25 Nov 2018 13:09:12 +0100
From: Agostino Sarubbo <ago@...too.org>
To: oss-security@...ts.openwall.com
Subject: Re: catdoc: out of bounds heap read and nullpointer / segfault
Content-Type: text/plain; charset=utf-8

On domenica 25 novembre 2018 09:57:37 CET Hanno Böck wrote:
> I reported two memory safety bugs in the command line tool catdoc.
> However the mails to the developer bounced.
> 
> The first is an out of bounds heap read, to detect it catdoc needs to
> be compiled with address sanitizer (test it with -fsanitize=address in
> CFLAGS).
> 
> The second is a null pointer and will just crash catdoc.

Hi Hanno,

something about catdoc was already reported time ago:
https://marc.info/?l=oss-security&m=142627461816744&w=2

I don't know atm if your findings are duplicate or not.

-- 
Agostino Sarubbo
Gentoo Linux Developer


