X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/09/04/2
Message-ID: <20170904124107.GB6792@suse.de>
Date: Mon, 4 Sep 2017 14:41:07 +0200
From: Marcus Meissner <meissner@...e.de>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2017-1000083: evince: Command injection vulnerability in CBT handler
Content-Type: text/plain; charset=utf-8

> > This can be exploited by creating a tar archive with an embedded file
> > named something
> > like this: "--checkpoint-action=exec=bash -c 'touch ~/covfefe.evince;'.jpg"
> > 
> > (Make sure evince is not sandboxed by apparmor before trying to reproduce
> > the attached POC)
> 
> Not sure if the list ate the attachment, but I don’t see it available. Perhaps a link to it somewhere else would be of use?

Sebastian Krahmer of SUSE recreated one that starts xeyes.

https://bugzilla.suse.com/show_bug.cgi?id=1046856

	( attachment link https://bugzilla.suse.com/attachment.cgi?id=739314 ) 

Ciao, Marcus
