X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/01/18/9
Message-ID: <20180118212114.GA8771@openwall.com>
Date: Thu, 18 Jan 2018 22:21:14 +0100
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Subject: Re: How to deal with reporters who don't want their bugs fixed?
Content-Type: text/plain; charset=utf-8

On Thu, Jan 18, 2018 at 05:10:05PM +0100, Florian Weimer wrote:
> Subject says it all: What do you do if you receive a vulnerability 
> report, and the reporter requests an embargo at some time in the future 
> because that's when their paper/conference presentation/patent 
> submission is scheduled?

I think it's best for your project (I guess glibc?) to prominently
publish near the security contact address a maximum embargo time you'd
(be likely to) agree to.  That's what security at kernel.org does
(7 days) and what we do with (linux-)distros (14 days).  That way, it's
less important for you to judge whether the reason for embargo is
valid/altruistic or bogus/selfish - a sane maximum embargo time
minimizes the damage to all parties either way.  When someone requests a
longer embargo for whatever reason, just decline and insist on your
previously published maximum.  Those who want to have their issue
disclosure timed with some other event will then be expected to delay
reporting the issue to your project until it's close enough to that
other event.  That's not ideal, but I think it's better than having no
maximum embargo time specified.

Alexander
