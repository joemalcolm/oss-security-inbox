X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/08/08/33
Message-ID: <20140808213629.GA25694@kroah.com>
Date: Fri, 8 Aug 2014 14:36:29 -0700
From: Greg KH <greg@...ah.com>
To: oss-security@...ts.openwall.com
Subject: Re: BadUSB discussion
Content-Type: text/plain; charset=utf-8

On Fri, Aug 08, 2014 at 11:27:06PM +0200, Yves-Alexis Perez wrote:
> On ven., 2014-08-08 at 14:20 -0700, Greg KH wrote:
> > > Actually, since it's a module parameter, it doesn't seem possible to
> > > toggle it without reloading the module (or rebooting if it's
> > builtin).
> > > So it might not be that easy to do the locking part.
> > 
> > echo "0" > /sys/module/usbcore/parameters/authorized_default
> 
> I did that, but unplugging/replugging my mouse still works after that.

Hm, not good, take it to the linux-usb@...r.kernel.org mailing list and
we can debug it there.

thanks,

greg k-h
