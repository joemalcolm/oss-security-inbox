X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/22/10
Message-ID: <2026072227-aware-wrinkly-5aa3@gregkh>
Date: Wed, 22 Jul 2026 10:30:58 +0200
From: Greg KH <greg@...ah.com>
To: oss-security@...ts.openwall.com
Subject: Re: 432 Linux kernel CVEs
Content-Type: text/plain; charset=utf-8

On Tue, Jul 21, 2026 at 08:44:41PM -0400, Jan Schaumann wrote:
> Steffen Nurpmeso <steffen@...oden.eu> wrote:
> > I wonder a bit what your desire is.
> 
> I'm looking to take the temperature on how people are
> responding to a significant influx of reported CVE
> fixes.  I believe it ought to change how organizations
> handle linux kernel security updates.

The kernel isn't "special" here, all companies are finally coming to
realize they need to re-evaluate their software updates for all of their
systems and devices as traditionally, it's been woefully ignored.

> I currently see the following possible approaches:
> 
> 1) I don't care: I always run the latest kernel
> everywhere and update at least once per
> $toleranceTimeWindow across all systems I manage.

Great!  This is what the kernel developer community recommends and
supports.  If you want support from us, do this.  If you can't do this,
then wonderful, pay a company to provide the needed support you wish to
have.  If you can't pay a company, then just use Debian or Yocto as
their security practices are amazing and because of this, it turns out
that those systems run the world (after Android.)

> 2) I do care: I review every single CVE and decide
> which changes I need to address / backport in my
> environment.

Great, you can do that in an automated way if you do an intersection
between what files a CVE addresses, and what files you actually
build/use in your kernel.  If you do that, it's normally down to about
10% of the overall total of CVEs you have to even pay attention to on a
"normal" system.

> 3) I update selectively whenever a single
> vulnerability makes big enough waves that somebody
> bothers me.  This usually happens in panic mode.

Good luck with that!  Luckily governments now realize this is not a good
idea and are mandating that you not do that (i.e. the CRA.)  Also, your
insurance company might wish to have a talk with you as well...

> (1) is great, but I haven't seen that be a realistic
> option in large environments.

Android does this pretty well for billions of devices (i.e. the largest
deployment of software in the world), with one very-overworked developer
guiding it all.  So it can be done.

> (2) hasn't been a scalable approach for a while, and
> perhaps the recent volume changes are leading to
> people to stop deceiving themselves.

Again, this can be done in an automated way to trim the # of CVEs down,
and is what many/most of the "enterprise" distros are doing today for
their customers.  So yes, it can be done.

> (3) is what I see most people do.  It kind of "worked"
> if you got a small number of events per year, not per
> week.

Again, this is going to be legislated away, and rightfully so.

The number of llm-found issues is only on the rise right now, it's going
to be a very long 18 months at the least to dig ourselves out of this
mess, and people had BETTER be updating their systems all along the way
if they expect to be secure in any way.

To quote Halvar Flake:
	“Software was never designed for perfect security,
	 that choice is now catching up with us”


Meta-comment about the 400+ CVEs on Sunday.  I finally carved some time
out of my weekend to catch up on the pending review queue that I was
_way_ behind in, and got closer to finishing it up.  All of the kernel
CVEs are reviewed in public, in our git repo, for everyone to watch and
comment on.  These were all pending for weeks, they shouldn't have come
as a suprise to anyone, except for the only issue being that it has
taken us this long to get them out (which was due to a perfect storm of
6 week straight of conferences and vacations).

thanks,

greg k-h
