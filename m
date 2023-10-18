X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/10/18/3
Message-ID: <a0b0eca3540cf1cb5e7ccb1d4e20d4edee9333da.camel@orlitzky.com>
Date: Wed, 18 Oct 2023 11:29:15 -0400
From: Michael Orlitzky <michael@...itzky.com>
To: oss-security@...ts.openwall.com
Subject: Re: with firefox on X11, any page can pastejack you anytime
Content-Type: text/plain; charset=utf-8

On Tue, 2023-10-17 at 03:17 +0300, turistu wrote:
> Note to the moderator: I have already submitted this to the firefox people
> three weeks ago, and according to them, this is not a real security issue,
> or at least not worse than those pesky scripts which you cannot kill without
> killing firefox itself; if you think the same, just ignore this without
> replying.

If there's more than one bug they must be features, duh.


> I would however appreciate if you let this through and so give it some
> visibility so that the other 2 or 3 people who may be affected by this
> could learn about it.

Thanks for this. Since nobody else has responded, I agree that it's a
security issue. The data in the clipboard are mine and there should be
exactly one way for me to overwrite them. This is a problem even if the
data is not sensitive and if the terminal paste is not exploitable:

1. A third party
2. Has tricked my computer
3. Into doing something I didn't want it to

Those are the three criteria for a vulnerability that I just made up.

