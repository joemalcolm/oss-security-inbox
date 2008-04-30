X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/04/30/2
Message-ID: <Pine.GSO.4.51.0804301018210.868@faron.mitre.org>
Date: Wed, 30 Apr 2008 10:21:18 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
cc: security@...nel.org
Subject: Re: security problem in ESP fragment handling?
Content-Type: text/plain; charset=utf-8


On Wed, 30 Apr 2008, Marcus Meissner wrote:

> According to Karsten Keil just ESP fragment packets need to be accepted
> by the kernel to trigger the condition.
> We think this might be true for all 2.6 kernels (ever since esp.c got added)

Any idea what the starting version might be?

Also, you mentioned a hang, but the commit says a BUG() is generated.  is
this just based on different inputs?

- Steve
