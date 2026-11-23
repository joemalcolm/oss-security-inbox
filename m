X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/24/2
Message-ID: <87h5h79l50.fsf@gentoo.org>
Date: Mon, 23 Nov 2026 23:35:23 +0000
From: Sam James <sam@...too.org>
To: oss-security@...ts.openwall.com
Subject: Re: libexpat 2.11.0 fixes three vulnerabilities
Content-Type: text/plain; charset=utf-8

Sebastian Pipping <sebastian@...ping.org> writes:

> [...]
>   #1495  Restore and document `-fno-strict-aliasing` for security
>            with both GCC and Clang >=20.

Why Clang >= 20? Clang has supported this flag since forever.

>            libexpat continues to be `-Wstrict-aliasing=3` clean and
>            to reject violations via CI but there are multiple known
>            strict aliasing violations within libexpat that despite
>            `-Wstrict-aliasing=3` are not detected by GCC and which

Note that -Wstrict-aliasing=1 is the most aggressive level [0]. Anyway,
in terms of detection, Clang has TypeSanitizer (-fsanitize=type) but it
has some issues still. Someone has proposed it for GCC now too.

[0] https://gcc.gnu.org/onlinedocs/gcc/Warning-Options.html#index-Wstrict-aliasing

>            are hard to impossible to resolve without a mess. These and

Why are they so hard to resolve here exactly? In general, just memcpy
and move on.

>            potentially other cases run the risk of miscompilation(!)
>            with `-O2/-O3/Os` without explicit `-fno-strict-aliasing`.
>            Hence `-fno-strict-aliasing` is brought back to both build
>            systems and is recommended to everyone embedding libexpat
>            in particular (but not only) to avoid surprises from
>            potential miscompilation. If curious, for the 2016 article
>            by John Regehr that motivated this move please see:
>            https://blog.regehr.org/archives/1307 .
>
> [...]

sam

Download attachment "signature.asc" of type "application/pgp-signature" (419 bytes)
