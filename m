X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/24/3
Message-ID: <atvhx9YVATRX3RhJ@mertle>
Date: Fri, 23 Oct 2026 18:37:59 -0400
From: Michael Orlitzky <michael@...itzky.com>
To: oss-security@...ts.openwall.com
Subject: Re: Upcoming Node.js security release 2026/10/21
Content-Type: text/plain; charset=utf-8

On 2026-10-23 15:12:16, Jan Schaumann wrote:
>
> This trickles down into any consumer

Only those dumb enough to bundle or statically link their
dependencies. The bare minimum in terms of software engineering would
prevent these 1990-ass vulnerabilities.

(NodeJS has a --shared-brotli option, so NodeJS should not be an issue
for distros that are paying attention.)
