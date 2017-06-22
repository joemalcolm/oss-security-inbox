X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/06/22/9
Message-ID: <20170622133812.GA1672@kroah.com>
Date: Thu, 22 Jun 2017 21:38:13 +0800
From: Greg KH <greg@...ah.com>
To: oss-security@...ts.openwall.com
Cc: Vasily Averin <vvs@...tuozzo.com>, Konstantin Khorenko <khorenko@...tuozzo.com>
Subject: Re: stackguard fix in Red Hat and Ubuntu kernels
Content-Type: text/plain; charset=utf-8

On Thu, Jun 22, 2017 at 02:18:33PM +0200, Marcus Meissner wrote:
> Hi,
> 
> Yes, we at SUSE are seeing similar crashes. Thanks for the reproducer!

The patches upstream in Linus's tree should resolve these crashes,
correct?  If not, please let the kernel developers know, as we ended up
going with a different set of changes than the distros shipped, and are
still working on getting these backported to older stable kernels at the
moment.

thanks,

greg k-h
