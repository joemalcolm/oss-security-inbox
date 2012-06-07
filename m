X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/06/07/8
Message-ID: <20120607091343.GB8042@suse.de>
Date: Thu, 7 Jun 2012 11:13:43 +0200
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

Wasn't aware that it lived in kernel git, sorry. Just sent a patch.

Ciao, Marcus
