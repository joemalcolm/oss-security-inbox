X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/10/01/12
Message-ID: <alpine.LRH.2.11.1410010002020.2887@fairfax.gathman.org>
Date: Wed, 1 Oct 2014 00:03:21 -0400 (EDT)
From: "Stuart D. Gathman" <stuart@...hman.org>
To: oss-security <oss-security@...ts.openwall.com>
Subject: Re: Healing the bash fork
Content-Type: text/plain; charset=utf-8

On Tue, 30 Sep 2014, Michal Zalewski wrote:

> You're describing taint tracking, which is actually a pretty hard
> problem when you realize that data isn't an abstract, immutable
> entity, but rather something that is used as input for arithmetics,
> conditional branches, etc (is a byte set as a result of a tainted
> conditional also tainted? for far-reaching should this effect be?).
>
> But more fundamentally, in your example, what does it prove? In
> practical settings, privileged programs will routinely have data from
> lower (or at least other) privilege levels in memory, but that doesn't
> indicate a security problem. In particular, both the fixed and the
> vulnerable versions of bash will have that property when invoked via a servlet.

It doesn't "prove" anything, but I thought it could maybe narrow down the
code to audit carefully.  I figured it had already been done.
