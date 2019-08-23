X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/08/23/3
Message-ID: <20190823132526.GA28250@kroah.com>
Date: Fri, 23 Aug 2019 06:25:26 -0700
From: Greg KH <greg@...ah.com>
To: oss-security@...ts.openwall.com
Cc: Eddie Chapman <eddie@...k.net>
Subject: Re: Linux kernel: multiple vulnerabilities in the USB subsystem x2
Content-Type: text/plain; charset=utf-8

On Thu, Aug 22, 2019 at 09:13:11PM -0400, Perry E. Metzger wrote:
> Given this, I think fixing bugs that might lead to privilege
> escalation, even if they require physical connection of USB devices,
> does indeed seem reasonable.

No one has said anything about not fixing these bugs.  The Linux USB
developers have been spending a lot of time in the past weeks doing just
that, so please do not think that is an issue here.

Now the "mount a purposfully corrupted filesystem image" issues, that's
another story :)  CERT has a long-running thread with a number of kernel
developers about issues they have found in that area over the past
years, which has not lead to many fixes for various reasons :(

thanks,

greg k-h
