X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/23/25
Message-ID: <atuxkDZ9jXeFrEn9@netmeister.org>
Date: Fri, 23 Oct 2026 15:12:16 -0400
From: Jan Schaumann <jschauma@...meister.org>
To: oss-security@...ts.openwall.com
Subject: Re: Upcoming Node.js security release 2026/10/21
Content-Type: text/plain; charset=utf-8

Alan Coopersmith <alan.coopersmith@...cle.com> wrote:
> On 10/14/26 09:36, Antoine du Hamel wrote:
> > Security release pre-alert:
> > 
> > We will release new versions of Node.js 22, 24, and 26 release lines on or shortly
> > after 2026-10-21 in order to address security vulnerabilities, the highest being HIGH.
> > 
> > https://nodejs.org/en/blog/vulnerability/october-2026-security-releases

> > Node.js Brotli decoder out-of-bounds write permits remote code execution
> > (CVE-2026-111497) - (high)
> > 
> > A flaw in Node.js can cause Node.js Brotli decoder out-of-bounds write
> > permits remote code execution.
> > 
> > This vulnerability affects Node.js 26.x, 24.x, and 22.x.

It's not quite obvious from this advisory, but the
underlying problem is not restricted to Node.js alone,
but rather in Google brotli:

https://github.com/advisories/GHSA-9v8h-qqgm-4m35

This trickles down into any consumer, including, e.g.,
Envoy:

https://github.com/envoyproxy/envoy/security/advisories/GHSA-3wvj-j6qm-62mr

It's conceivable that OpenSSL processing compressed
certificates using brotli might also then be impacted.
In other words, this could have ramifications
everywhere.

Just calling this out to avoid people looking at this
and thinking "I don't use Node.js, so nothing to worry
about".

I'm not sure if OS providers are treating this with
the appropriate urgency, either.  For example, Ubuntu
considers this a "medium" priority:

https://ubuntu.com/security/CVE-2026-111497

-Jan
