X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/06/12/4
Message-Id: <40b16e14fcb3e3bf@sudo.ws>
Date: Tue, 12 Jun 2018 09:47:10 -0600
From: "Todd C. Miller" <Todd.Miller@...o.ws>
To: oss-security@...ts.openwall.com
Subject: Re: Are `su user' and/or `sudo -u user sh' considered dangerous?
Content-Type: text/plain; charset=utf-8

On Tue, 12 Jun 2018 11:25:45 -0400, Jordan Glover wrote:

> > For sudo, there's the "use_pty" flag. (It's not enabled by default.)
>
> Why this isn't default? Where's the catch?

Up until recently there were issues with background processes being
killed when the pty went away.  Using a pty will become the default
in a future release.

 - todd
