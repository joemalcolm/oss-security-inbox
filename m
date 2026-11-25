X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/25/7
Message-ID:  <PA0P264MB7268800352A9EC21092474D1C0432@PA0P264MB7268.FRAP264.PROD.OUTLOOK.COM>
Date: Wed, 25 Nov 2026 11:14:04 +0000
From: Pascal Cuoq <cuoq@...st-in-soft.com>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
CC: Sebastian Pipping <sebastian@...ping.org>
Subject: RE: libexpat 2.11.0 fixes three vulnerabilities
Content-Type: text/plain; charset=utf-8

Sebastian Pipping wrote:

The next part of that same paragraph says:
    The new default behavior can be disabled using -fno-pointer-tbaa.
Clang has performed optimisations of this type for a long time, it just
does so more aggressively now.
If you want to gate the behaviour on >= 20, you should use
-fno-pointer-tbaa.
This CE link shows specifically what kind of optimization Clang 20 adds
to its existing type-based alias analysis:

https://gcc.godbolt.org/z/TMTxhP454

In this example, Clang 20 assumes that *p, at the return, cannot have
changed since assigned, because only an int* was written to memory since.
The full reasoning is that either p points to a variable of type long*, in which
case it's illegal to write to it through the lvalue *q, or it points to dynamically
allocated memory, in which case it's illegal to read *p from there at the return
if the write to *q touched the same bytes, because in this latter case, the
effective type has been changed to int* when *q was written.

I think that current expat contains both the "int is not aliased with long" kind of
violation (at least in some configuration) and also the "int* is not aliased
with long*" kind. Since each violation is a separate opportunity for the
compiler to generate code that does not respect the intentions of the
programmer, it is even more urgent to use -fno-strict-aliasing when compiling
expat (and any other C code) with Clang 20+ than with Clang 19-.

Pascal



