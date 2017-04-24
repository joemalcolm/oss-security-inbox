X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/04/24/2
Message-ID: <20170424124605.GG22557@suse.de>
Date: Mon, 24 Apr 2017 14:46:05 +0200
From: Marcus Meissner <meissner@...e.de>
To: oss-security@...ts.openwall.com
Subject: Re: libcroco: heap overflow and undefined behavior
Content-Type: text/plain; charset=utf-8

On Sun, Apr 23, 2017 at 12:42:04PM +0200, Agostino Sarubbo wrote:
> Description:
> libcroco is a Generic Cascading Style Sheet (CSS) parsing and manipulation 
> toolkit.

...

> # csslint-0.6 $FILE
> /tmp/portage/dev-libs/libcroco-0.6.12/work/libcroco-0.6.12/src/cr-
> tknzr.c:1283:15: runtime error: value 9.11111e+19 is outside the range of 
> representable values of type 'long'
> Commit fix:
> https://git.gnome.org/browse/libcroco/commit/?id=9ad72875e9f08e4c519ef63d44cdbd94aa9504f7
> Reproducer:
> https://github.com/asarubbo/poc/blob/master/00268-libcroco-outside-long
> CVE:
> CVE-2017-7961
> 
> Affected version:
> 0.6.11 and 0.6.12
> 
> Fixed version:
> 0.6.13 (not released atm)

This is not a security issue in my view. The conversion surely is
truncating the double into a long value, but there is no impact as the
value is one of the RGB components.

Ciao, Marcus
