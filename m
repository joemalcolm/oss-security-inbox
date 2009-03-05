X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/03/05/2
Message-ID: <20090305151550.GA17819@logo.rdu.rpath.com>
Date: Thu, 5 Mar 2009 10:15:50 -0500
From: "Michael K. Johnson" <johnsonm@...th.com>
To: oss-security@...ts.openwall.com
Subject: Re: lxc-sshd security issues?
Content-Type: text/plain; charset=utf-8

On Wed, Mar 04, 2009 at 05:30:33PM -0500, Michael K. Johnson wrote:
> I have not received any response to this query upstream, and I
> was wondering if anyone else has noticed this issue, and if so,
> if they have any plans with regard to it.  rPath isn't shipping
> lxc at this point, so we have no plans for a security advisory.
> But does pre-configured account information including root and
> user passwords bother anyone else here?

I finally got the right contact info upstream, and we're talking
about this, so expect it to not be a problem in future releases.
For the record, it's dummy auth data, but still could be seen as a
backdoor, and will probably be changed to user-configured value.
