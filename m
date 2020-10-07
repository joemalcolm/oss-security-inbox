X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/10/07/1
Message-ID: <20201007073140.GA340590@kroah.com>
Date: Wed, 7 Oct 2020 09:31:40 +0200
From: Greg KH <greg@...ah.com>
To: oss-security@...ts.openwall.com
Subject: Re: major changes if gnu/linux dominates the desktop and/or mobile market?
Content-Type: text/plain; charset=utf-8

On Wed, Oct 07, 2020 at 08:00:05AM +1100, Brian May wrote:
> 
> Android devices typically require a forked version of the Linux kernel.

That is due to SoC support, not an Android-specific issue at all.

You can run Android code just fine on mainline kernels, if you have
proper hardware support merged upstream.  This has been true for many
years now.

> I believe they are slowly moving to reduce the changes required by
> merging them mainline, but not sure how that is progressing right now.

See the lwn.net articles from the Plumbers conference for the past few
years as to the status of that effort.  Last I looked, it was a handful
of out-of-tree patches for a few things that upstream did not want to
take, but Android still had to support for backwards-compatibility
issues.  Nothing major at all, odds are your favorite Linux distro
kernel has more changes in it :)

And all of those changes are public and can be easily audited if you so
desire.

thanks,

greg k-h
