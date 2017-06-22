X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/06/22/12
Message-ID: <20170622162341.GC11634@u40b0340c692b58f6553c.ant.amazon.com>
Date: Thu, 22 Jun 2017 09:23:41 -0700
From: Eduardo Valentin <eduval@...zon.com>
To: <oss-security@...ts.openwall.com>
CC: Vasily Averin <vvs@...tuozzo.com>, Konstantin Khorenko <khorenko@...tuozzo.com>
Subject: Re: stackguard fix in Red Hat and Ubuntu kernels
Content-Type: text/plain; charset=utf-8

On Thu, Jun 22, 2017 at 09:38:13PM +0800, Greg KH wrote:
> On Thu, Jun 22, 2017 at 02:18:33PM +0200, Marcus Meissner wrote:
> > Hi,
> > 
> > Yes, we at SUSE are seeing similar crashes. Thanks for the reproducer!
> 
> The patches upstream in Linus's tree should resolve these crashes,
> correct?  If not, please let the kernel developers know, as we ended up

We could not repro the segv with the upstream version at our end. So, I think upstream is fine for this case.

> going with a different set of changes than the distros shipped, and are

Just to my understanding, do you know why we ended up having a version for linux-distro and another for upstream?

> still working on getting these backported to older stable kernels at the
> moment.

Thanks!!

> 
> thanks,
> 
> greg k-h
> 

-- 
All the best,
Eduardo Valentin
