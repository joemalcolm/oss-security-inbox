X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/11/19/1
Message-ID: <20201119053416.vfvkqvgsmbmp2wnd@moyka>
Date: Wed, 18 Nov 2020 21:34:16 -0800
From: Ian Zimmerman <itz@...y.loosely.org>
To: oss-security@...ts.openwall.com
Subject: Re: libass ass_outline.c signed integer overflow
Content-Type: text/plain; charset=utf-8

On 2020-09-29 08:19, Fstark wrote:

> In `ass_outline_construct`'s call to `outline_stroke` a signed integer
> overflow happens *(undefined behaviour)*. On my machine signed overflow
> happens to wrap around to a negative value, thus failing the assert.
> https://github.com/libass/libass/issues/431
> 
> https://github.com/libass/libass/pull/432

I have followed the links above, and this seems to be an example of a
situation where the CVE process has failed. It is still not fixed in
Debian, possibly for that reason. I'll report a Debian bug today.

-- 
Ian
