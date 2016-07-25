X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/07/25/3
Message-ID: <20160725011319.GA17899@kroah.com>
Date: Sun, 24 Jul 2016 18:13:19 -0700
From: Greg KH <greg@...ah.com>
To: oss-security@...ts.openwall.com
Subject: Re: Re: CVE-2016-5400 - linux kernel: denial of service in airspy USB driver.
Content-Type: text/plain; charset=utf-8

On Mon, Jul 25, 2016 at 10:51:16AM +1000, Wade Mealing wrote:
> Hit send too early,
> 
> 
> Upstream patch:
> https://git.linuxtv.org/media_tree.git/commit/?id=eca2d34b9d2ce70165a50510659838e28ca22742
> 
> Maintainer has yet to send to LKML.

If it's in the media tree, it doesn't go to lkml.

Any reason why this isn't tagged for a stable kernel release?

thanks,

greg k-h
