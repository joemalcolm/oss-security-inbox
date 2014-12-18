X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/12/18/9
Message-ID: <CAA7hUgFQd8YTaQ2suEBOU5EcjxuoyaK63UMkHjabTgKG_nYs8g@mail.gmail.com>
Date: Thu, 18 Dec 2014 11:36:28 +0100
From: Raphael Geissert <geissert@...ian.org>
To: Open Source Security <oss-security@...ts.openwall.com>
Subject: Re: Embargoes for secondary issues
Content-Type: text/plain; charset=utf-8

Hi,

On 18 December 2014 at 10:52, Florian Weimer <fweimer@...hat.com> wrote:
> Suppose we have an unfixed, public issue, and while working on a fix, other
> issues in the same code are discovered which are different flaws, but have
> similar impact than the original issue.
>
> Do we need an embargo for the secondary issues, or can we just make them
> public immediately?  I would strongly prefer the latter.

Based on experience, I'd say the latter is the best course of action.
Known issues tend to attract more eyes and make the discovery of the
secondary issues more likely.

The line is probably going to be more difficult to be drawn if the
CVSS score of the secondary issues bump due to, say, easier
exploitability.

Cheers,
-- 
Raphael Geissert - Debian Developer
www.debian.org - get.debian.net
