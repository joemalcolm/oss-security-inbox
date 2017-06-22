X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/06/22/11
Message-ID: <20170622143402.GN32005@suse.de>
Date: Thu, 22 Jun 2017 16:34:02 +0200
From: Marcus Meissner <meissner@...e.de>
To: oss-security@...ts.openwall.com
Cc: Vasily Averin <vvs@...tuozzo.com>, Konstantin Khorenko <khorenko@...tuozzo.com>
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
> going with a different set of changes than the distros shipped, and are
> still working on getting these backported to older stable kernels at the
> moment.

For a bit of history...

We used the patch developed by Michal Hocko, which was apparently adjusted/rewritten
by Hugh Dickins for upstream inclusion.

We are working on the improvements on those for our 3.0 kernel, but take
a backport of the mainline fix for 3.12 and 4.4 kernels.

Ciao, Marcus
