X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/12/08/3
Message-ID: <20171208094854.GA9289@kroah.com>
Date: Fri, 8 Dec 2017 10:48:54 +0100
From: Greg KH <greg@...ah.com>
To: Dan Carpenter <dan.carpenter@...cle.com>
Cc: at zhou <zhouat2017@...il.com>, security@...nel.org, secalert@...hat.com, security@...e.com, tglx@...utronix.de, oss-security@...ts.openwall.com, linux-distros@...openwall.org
Subject: Re: signed integer overflow in common_timer_get on linux 4.15.0-rc1
Content-Type: text/plain; charset=utf-8

On Fri, Dec 08, 2017 at 12:09:50PM +0300, Dan Carpenter wrote:
> On Thu, Dec 07, 2017 at 12:17:18PM +0100, Greg KH wrote:
> > On Thu, Dec 07, 2017 at 06:01:43PM +0800, at zhou wrote:
> > > Hi all,
> > > 
> > > credit   to   L5@...vulcan team
> > > 
> > > I fuzzed the linux kernel and find signed integer overflow on linux
> > > 4.15.0-rc1+.
> > > the crash log can see below, the .config and the poc file ,please see the
> > > attachments.
> > 
> > Odd, doesn't seem to affect a 4.9 or 4.15-rc2 kernel here on my
> > machines, is there something specific in the .config that might be
> > triggering this?
> > 
> 
> Greg, you're running with UBSAN?

Ah, missed that one.  No, I'm not crazy :)

Makes a bit more sense.

at zhou, care to make up a patch for this as it seems you can test it
easily?

thanks,

greg k-h
