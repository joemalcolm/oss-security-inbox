X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/12/17/21
Message-ID: <20081217153207.GA14541@suse.de>
Date: Wed, 17 Dec 2008 16:32:07 +0100
From: Marcus Meissner <meissner@...e.de>
To: oss-security@...ts.openwall.com
Cc: Eugene Teo <eugeneteo@...nel.sg>, "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: Re: CVE request: kernel: applicom: fix an unchecked user ioctl range
Content-Type: text/plain; charset=utf-8

On Tue, Dec 16, 2008 at 09:24:32PM -0500, Steven M. Christey wrote:
> 
> On Wed, 17 Dec 2008, Eugene Teo wrote:
> 
> > Hmm, there's a comment in the ac_ioctl() that the device for this is
> > only accessible by root, so if out of range may not matter. Hmm. So,
> > maybe, maybe not.
> 
> Our current approach would be, probably not.

I guess the accessibility very much depends on the /dev/ac* device
permissions here. For a multiport serial card I guess root/tty only.

Ciao, Marcus
