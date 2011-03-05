X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/03/05/4
Message-ID: <20110305192106.GB31605@openwall.com>
Date: Sat, 5 Mar 2011 22:21:06 +0300
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request -- logrotate -- nine issues
Content-Type: text/plain; charset=utf-8

On Sat, Mar 05, 2011 at 03:17:57AM +0700, Pavel Labushev wrote:
> 04.03.2011 21:52, Solar Designer пишет:
> 
> > I've just skimmed over the list, and I only see one issue that I'd call
> > a vulnerability in logrotate, issue #8.  And we need more info on #5.
> > 
> > The rest, as described, appear to rely on sysadmin error and to assume
> 
> Or on package maintainer error.

Right.

> At least in Gentoo there are packages
> (ebuilds and eclasses) that create user/group-writable directories in
> /var/log and enable logrotate to handle the log files there.

Is this something you can get fixed?

Alexander
