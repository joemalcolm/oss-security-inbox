X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/06/13/6
Message-ID: <20180613095453.GB1166@sivokote.iziade.m$>
Date: Wed, 13 Jun 2018 12:54:54 +0300
From: Georgi Guninski <guninski@...inski.com>
To: oss-security@...ts.openwall.com
Subject: Re: Are `su user' and/or `sudo -u user sh' considered dangerous?
Content-Type: text/plain; charset=utf-8

On Wed, Jun 13, 2018 at 10:40:43AM +0300, Georgi Guninski wrote:
> Is there POC for relatively new distros?

debian 8 and 9 are vulnerable to su - hostile:
https://j.ludost.net/blog/archives/2018/06/13/ancient_su_-_hostile_vulnerability_in_debian_8_and_9/index.html

what about the second potential vulnerability: reading root's tty after
the session is closed with something like tee(1) ?

several sources suggest disabling TIOCSTI or using setsid(), are they
enough?

