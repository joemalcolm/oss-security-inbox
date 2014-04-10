X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/04/10/4
Message-ID: <20140410055044.GA18588@scapa.corsac.net>
Date: Thu, 10 Apr 2014 07:50:45 +0200
From: Yves-Alexis Perez <corsac@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: Cauterizing OpenSSL's heartbleed (the aftermath)
Content-Type: text/plain; charset=utf-8

On Wed, Apr 09, 2014 at 04:20:14PM -0700, Seth Arnold wrote:
> On Wed, Apr 09, 2014 at 10:47:48PM +0000, mancha wrote:
> > Mustafa Al-Bassam's work assists a great deal with this taxonomy. He
> > ran PoC code against Alexa top 100, 1000, and 10000 sites beginning
> > about 18 hours after OpenSSL's first public announcement [1].
> > 
> > Specifically, his scans began circa: 1396956600 (top 100); 1396958400
> > (top 1000); and 1396972800 (top 10000). Did any major vendors deploy
> > upgrades prior to this?
> 
> Ubuntu's updates were released around 1396907296 [2], roughly 13 hours
> before Mustafa's awesome scans.

For Debian Wheezy, the DSA was sent circa 1396906606 [1]. The package were
already on the initial security.debian.org (and started propagating to
the mirrors) since circa 1396899374

[1]: https://lists.debian.org/debian-security-announce/2014/msg00071.html
[2]: http://snapshot.debian.org/package/openssl/1.0.1e-2%2Bdeb7u5/

Regards,
-- 
Yves-Alexis Perez

Download attachment "signature.asc" of type "application/pgp-signature" (491 bytes)
