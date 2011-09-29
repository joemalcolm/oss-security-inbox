X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/09/29/6
Message-ID: <20110929125022.GA14031@britannica.bec.de>
Date: Thu, 29 Sep 2011 14:50:22 +0200
From: Joerg Sonnenberger <joerg@...tannica.bec.de>
To: Solar Designer <solar@...nwall.com>
Cc: Tavis Ormandy <taviso@...xchg8b.com>, oss-security@...ts.openwall.com, joerg@...bsd.org
Subject: Re: LZW decompression issues
Content-Type: text/plain; charset=utf-8

On Thu, Sep 29, 2011 at 04:38:08AM +0400, Solar Designer wrote:
> Hi Tavis,
> 
> On Wed, Sep 28, 2011 at 08:42:56PM +0200, Tavis Ormandy wrote:
> > I believe I wrote that patch,
> 
> I believe you wrote a different patch, or two:
> 
> http://cvsweb.openwall.com/cgi/cvsweb.cgi/Owl/packages/gzip/Attic/gzip-1.3.5-google-owl-bound.diff
> http://cvsweb.openwall.com/cgi/cvsweb.cgi/Owl/packages/gzip/Attic/gzip-1.3.5-gentoo-huft_build-return.diff

This is not about GNU (g)zip, but the NetBSD/FreeBSD tool of the same
name. The corresponding NetBSD advisory explicitly lists GNU gzip and
libarchive as not vulnerable.

Joerg
