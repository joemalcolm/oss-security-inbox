X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/02/11/6
Message-ID: <20150211121715.GV28137@symphytum.spacehopper.org>
Date: Wed, 11 Feb 2015 12:17:15 +0000
From: Stuart Henderson <sthen@...nbsd.org>
To: oss-security@...ts.openwall.com
Subject: Re: wordexp(3)
Content-Type: text/plain; charset=utf-8

On 2015/02/10 20:27, Solar Designer wrote:
> (x5) <@worr> OpenBSD wins the wordexp(3) contest, by refusing to implement it altogether.

It might be of interest to know that we've only got patches in 2 ports
as a result of this: celestia and filezilla (we're using globs instead
of wordexp for these; I'm not aware of any negative feedback relating
to these patches).

