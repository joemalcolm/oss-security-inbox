X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/12/08/18
Message-ID: <20161208201200.25774.134A28B2@matica.foolinux.mooo.com>
Date: Thu, 8 Dec 2016 12:14:43 -0800
From: Ian Zimmerman <itz@...mate.net>
To: oss-security@...ts.openwall.com
Subject: Re: imagemagick: heap-based buffer overflow in IsPixelMonochrome (pixel-accessor.h)
Content-Type: text/plain; charset=utf-8

On 2016-10-15 22:45, cve-assign@...re.org wrote:

> > https://blogs.gentoo.org/ago/2016/10/07/
> > imagemagick-heap-based-buffer-overflow-in-ispixelmonochrome-pixel-accessor-h/

> Use CVE-2016-8678.

Since there seems to be at least a bit of controversy about this, I
think a pointer to the upstream issue may be helpful:

https://github.com/ImageMagick/ImageMagick/issues/272

-- 
Please *no* private Cc: on mailing lists and newsgroups
Personal signed mail: please _encrypt_ and sign
Don't clear-text sign: http://cr.yp.to/smtp/8bitmime.html
