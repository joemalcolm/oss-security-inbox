X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/04/7
Message-ID: <b1608be8-f255-48bd-abc0-9e1b9e2ab07d@oracle.com>
Date: Fri, 4 Sep 2026 16:25:51 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: pcre2 version 10.48 released with security fixes
Content-Type: text/plain; charset=utf-8

https://github.com/PCRE2Project/pcre2/blob/pcre2-10.48/NEWS reports:
> Version 10.48 31-August-2026
> ----------------------------
> 
> This is a regular release, incorporating security fixes along with small
> improvements and fixes to library behaviour.
> 
> Only changes to behaviour, changes to the API, and other significant changes
> are described here. Please see the ChangeLog and Git log for further details.
> 
> As well as the tarball and Git tag for this release, there are detailed
> instructions for backporting security and correctness fixes, for the last
> five years of releases.
> 
> * (Git change) Renamed the default development branch from master to main.
> 
> * (Maintenance change) Added a five-year support lifecycle policy and
> publication of backport patches for security and high-severity fixes in older
> releases.
> 
> * (Security fix for very specific API usage, GHSA-2p8c-ff85-vh9x) If
> pcre2_jit_compile() is called with options for some match modes, and then
> pcre2_match() is used to perform a match for a different match mode, an
> out-of-bounds read can occur if the match is attempted against invalid UTF input.
> 
> * (Security fix for pattern conversion, GHSA-q8g2-wprr-34m9) If pcre2_convert()
> is called on untrusted input on platforms with 32-bit size_t, an out-of-bounds
> heap write can occur.
> 
> * (Security fix, GHSA-3r4p-g7gg-ppmf) Fixed an out-of-bounds write in DFA
> matching when using a heap limit; also fixed possible integer overflows which
> could cause under-allocation of the workspace.
> 
> * (Security fix, GHSA-fmgr-6ggq-9859) Added bounds checks for several integer
> overflows while compiling patterns on 32-bit CPUs, which could cause
> under-allocation followed by out-of-bounds writes.
> 
> * (Security fix, GHSA-9qww-pwc4-77qq) Applied lower buffer bound to prevent
> two out-of-bounds reads while scanning backwards through invalid UTF data with
> PCRE2_MATCH_INVALID_UTF.
> 
> * (Matching correctness) Fixed several matching issues:
>   - A JIT-specific matching bug affecting prefix scanning on patterns with
>     repeats (#875).
>   - A JIT-specific matching bug in variable-length lookbehinds (#912).
>   - Miscompiled Unicode character classes combining characters at or below
>     U+00FF with characters at U+0100 and U+8000 or above (#841).
>   - Incorrect JIT character advancement with PCRE2_MATCH_INVALID_UTF in UTF-8
>     and UTF-16 modes, which could skip adjacent characters (#945).
> 
> * (Behaviour change) Updated Unicode support to Unicode 17.0.
> 
> * (Small behaviour changes) Many small fixes, including pcre2_substitute()
> improvements, optimisation of possessive backreference matching, and
> pcre2_compile() fixes.
> 
> * (Small build changes) Many small adjustments to the CMake and Zig builds.
> 
> * (Security fix for very specific API usage, #937) Fixed a leak and later
> invalid free when calling the fast-path pcre2_jit_match() function with a match
> data object previously used with pcre2_match() and
> PCRE2_COPY_MATCHED_SUBJECT.
> 
> * (Low-severity security fix, GHSA-q7rw-r7qq-2hx6) Fixed exposure of two
> uninitialised bytes from malloc() via pcre2_serialize_encode().

The GHSA advisories listed above can be found on
https://github.com/PCRE2Project/pcre2/security

None seem to have CVE id's assigned at this time.
