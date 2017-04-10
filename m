X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/04/10/10
Message-ID: <20170410072931.o5ptcv5uyhw34gxf@perpetual.pseudorandom.co.uk>
Date: Mon, 10 Apr 2017 08:29:31 +0100
From: Simon McVittie <smcv@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2017-7592: libtiff: left shift
Content-Type: text/plain; charset=utf-8

On Mon, 10 Apr 2017 at 07:03:25 +0000, Agostino Sarubbo wrote:
> Since there is no cast, *(pp+1) is treated as int, so
> UndefinedBehaviorSanitizer says:
> runtime error: left shift of 134 by 24 places cannot be represented in type
> 'int'

This is a bug, but how is it a security vulnerability? Can an attacker
exploit it for DoS or code execution or something with a malformed TIFF
image?

    S
