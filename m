X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/11/22/5
Message-ID: <CALx_OUCSLH1n0JaBT4XAysVpEQMLF-vGUBtn4dmJ3ED8cZigEg@mail.gmail.com>
Date: Wed, 22 Nov 2017 08:34:23 -0800
From: Michal Zalewski <lcamtuf@...edump.cx>
To: oss-security <oss-security@...ts.openwall.com>
Subject: Re: Go programming language invalid modular exponentiation result (Exp() in math/big pkg)
Content-Type: text/plain; charset=utf-8

> Is this fuzzer freely available?  I'd love to try it out on the bignum
> support I added to the CHICKEN Scheme implementation for its upcoming
> new major release (probably somewhere mid-2018).  Being able to release
> it with a bit higher confidence in its correctness would be nice, as this
> is almost all brand new code.

Not the same tool, but Hanno released a bignum fuzzer that found quite
a few issues back in the day:

https://github.com/hannob/bignum-fuzz/

/mz
