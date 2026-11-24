X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/24/7
Message-ID: <87qzga8o26.fsf@gentoo.org>
Date: Tue, 24 Nov 2026 11:29:53 +0000
From: Sam James <sam@...too.org>
To: Sebastian Pipping <sebastian@...ping.org>
Cc: oss-security@...ts.openwall.com
Subject: Re: libexpat 2.11.0 fixes three vulnerabilities
Content-Type: text/plain; charset=utf-8

Sebastian Pipping <sebastian@...ping.org> writes:

> Hello Sam,
>
>
> On 11/24/26 00:35, Sam James wrote:
>> Why Clang >= 20? Clang has supported this flag since forever.
>
> at
> https://releases.llvm.org/20.1.0/tools/clang/docs/ReleaseNotes.html
> it reads:
>
>   Clang now emits distinct type-based alias analysis tags for
>   incompatible pointers by default, enabling more powerful alias
>   analysis when accessing pointer types. This change may silently change
>   code behavior for code containing strict-aliasing violations.

The next part of that same paragraph says:
    The new default behavior can be disabled using -fno-pointer-tbaa.

Clang has performed optimisations of this type for a long time, it just
does so more aggressively now.

If you want to gate the behaviour on >= 20, you should use
-fno-pointer-tbaa.

But if you're not confident the codebase is TBAA-safe, you should just
use -fno-strict-aliasing unconditionally where the compiler supports it.

>
>
>> Note that -Wstrict-aliasing=1 is the most aggressive level [0].
>
> It also says "least accurate".

Yes, but the way you mentioned it made me think "it's [even]
-Wstrict-alisaing=3" clean, as if it's the toughest level. Of course you
get false positives if you crank up the sensitivity.

>
>
>> Anyway,
>> in terms of detection, Clang has TypeSanitizer (-fsanitize=type) but it
>> has some issues still. Someone has proposed it for GCC now too.
>> [0]
>> https://gcc.gnu.org/onlinedocs/gcc/Warning-Options.html#index-Wstrict-aliasing
>
> I'm in the process of adding Clang's TypeSanitizer to CI.
>

Excellent.


> Best
>
>
>
> Sebastian

sam

Download attachment "signature.asc" of type "application/pgp-signature" (419 bytes)
