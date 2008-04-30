X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/04/30/7
Message-ID: <20080430161017.GA15312@suse.de>
Date: Wed, 30 Apr 2008 18:10:17 +0200
From: Marcus Meissner <meissner@...e.de>
To: oss-security@...ts.openwall.com
Cc: Karsten Keil <kkeil@...e.de>, security@...nel.org
Subject: Re: security problem in ESP fragment handling?
Content-Type: text/plain; charset=utf-8

On Wed, Apr 30, 2008 at 04:18:11PM +0100, Mark J Cox wrote:
> >http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commitdiff;h=920fc941a9617f95ccb283037fe6f8a38d95bb69
> >
> >This will at least hang the networking of the system if triggered.
> >
> >
> >According to Karsten Keil just ESP fragment packets need to be accepted
> >by the kernel to trigger the condition.
> >We think this might be true for all 2.6 kernels (ever since esp.c got 
> >added).
> 
> Quick response (burried today) but I think this is already allocated 
> CVE-2007-6282
> 
> http://64.233.183.104/search?q=cache:NNop-SbiE4EJ:www.mail-archive.com/netdev%40vger.kernel.org/msg62480.html+CVE-2007-6282&hl=en&ct=clnk&cd=1

Yes, this is the same issue.

Ciao, Marcus
