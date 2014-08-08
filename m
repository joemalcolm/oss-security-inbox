X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/08/08/31
Message-ID: <1407533226.29725.33.camel@scapa>
Date: Fri, 08 Aug 2014 23:27:06 +0200
From: Yves-Alexis Perez <corsac@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: BadUSB discussion
Content-Type: text/plain; charset=utf-8

On ven., 2014-08-08 at 14:20 -0700, Greg KH wrote:
> > Actually, since it's a module parameter, it doesn't seem possible to
> > toggle it without reloading the module (or rebooting if it's
> builtin).
> > So it might not be that easy to do the locking part.
> 
> echo "0" > /sys/module/usbcore/parameters/authorized_default

I did that, but unplugging/replugging my mouse still works after that.
-- 
Yves-Alexis

Download attachment "signature.asc" of type "application/pgp-signature" (474 bytes)
