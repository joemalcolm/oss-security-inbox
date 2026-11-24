X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/24/6
Message-ID: <64ea43d3-c800-4069-89a0-4190cb7d8595@pipping.org>
Date: Tue, 24 Nov 2026 11:34:05 +0100
From: Sebastian Pipping <sebastian@...ping.org>
To: oss-security@...ts.openwall.com
Cc: Sam James <sam@...too.org>
Subject: Re: libexpat 2.11.0 fixes three vulnerabilities
Content-Type: text/plain; charset=utf-8

Hello Sam,


On 11/24/26 00:35, Sam James wrote:
> Why Clang >= 20? Clang has supported this flag since forever.

at
https://releases.llvm.org/20.1.0/tools/clang/docs/ReleaseNotes.html
it reads:

   Clang now emits distinct type-based alias analysis tags for
   incompatible pointers by default, enabling more powerful alias
   analysis when accessing pointer types. This change may silently change
   code behavior for code containing strict-aliasing violations.


> Note that -Wstrict-aliasing=1 is the most aggressive level [0].

It also says "least accurate".


> Anyway,
> in terms of detection, Clang has TypeSanitizer (-fsanitize=type) but it
> has some issues still. Someone has proposed it for GCC now too.
> 
> [0] https://gcc.gnu.org/onlinedocs/gcc/Warning-Options.html#index-Wstrict-aliasing

I'm in the process of adding Clang's TypeSanitizer to CI.

Best



Sebastian

