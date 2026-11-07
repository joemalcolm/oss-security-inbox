X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/07/8
Message-ID: <aa6dd6ce-5560-48f4-80bc-d6e251d9a390@terraraq.uk>
Date: Sat, 7 Nov 2026 10:24:04 +0000
From: Richard Kettlewell <rjk@...raraq.uk>
To: oss-security@...ts.openwall.com
Subject: Re: "sshole": password authentication bypass: OpenSSH + musl libc
Content-Type: text/plain; charset=utf-8

On 07/11/2026 03:33, theknell@...k.com wrote:
> libxcrypt doesn't return NULL for a bad setting either. Every
> malformed setting in my matrix — *, !, !!, *LK*, !$y$..., x, empty,
> $x$, $9$abc, truncated $y$, bad-cost $2b$ — comes back as the
> failure token "*0", errno=EINVAL. Feed it "*0" and it answers "*1";
> "*1" gets you "*0". The token is built to never compare equal to
> whatever produced it. So Orlitzky's right, musl isn't the only one
> returning a string on failure. It's just the only one whose failure
> string is "*". That turns out to matter.

https://github.com/besser82/libxcrypt/blob/develop/lib/util-make-failure-token.c

Pedantically: the result will be "*" if the buffer is only two bytes 
(L37-42). I don't whether any real-life callers do this.

ttfn/rjk

