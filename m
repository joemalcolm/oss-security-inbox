X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/06/5
Message-ID: <anSjfoJ5BWBSrdGW@netmeister.org>
Date: Thu, 6 Aug 2026 11:08:46 -0400
From: Jan Schaumann <jschauma@...meister.org>
To: oss-security@...ts.openwall.com
Subject: Re: Some Changes to GNOME Security Tracking
Content-Type: text/plain; charset=utf-8

Francis Perron <francis@...uxfoundation.org> wrote:
> We are going to try our best and involve project
> maintainers early in the development of the fixes 

> We will not take generic findings and send them through Upstream directly;
> our pipeline will validate, deduplicate, enrich and get a patch ready
> before any disclosure.

Aren't those two statements somewhat conflicting?
I.e., early involvement of the maintainers vs
(paraphrased) "get a patch ready before any
disclosure" -- or is "disclosure" here "disclosure
to the public" and not "disclosure to the
maintainer"?

I happen to think that _patch development_ absolutely
should happen with maintainer / upstream involvement
and not in a vacuum prior to disclosure to upstream.

IME, developing a fix is rarely the most difficult
part; a concrete description with a reproducible
proof-of-concept is usually the much harder part.

-Jan
