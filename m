X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/06/07/6
Message-ID: <20120607082204.GA8042@suse.de>
Date: Thu, 7 Jun 2012 10:22:04 +0200
From: Marcus Meissner <meissner@...e.de>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-Request: hyper-v daemon
Content-Type: text/plain; charset=utf-8

On Thu, Jun 07, 2012 at 10:35:24AM +0900, Greg KH wrote:
> On Wed, Jun 06, 2012 at 04:59:59PM +0200, Sebastian Krahmer wrote:
> > Hi,
> > 
> > The hyper-v daemon fails to check origin of netlink messages.
> > Please see
> > 
> > https://bugzilla.novell.com/show_bug.cgi?id=761200
> 
> Is there a fix for this anywhere yet?

Attached to the bugreport and here. It is the same patch as pasted in #c3 of this report.

Ciao, Marcus

View attachment "hyper-v.tools.hv.hv_kvp_daemon.c.patch" of type "text/x-patch" (731 bytes)
