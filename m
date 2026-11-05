X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/05/11
Message-ID: <80e7c5cb-35c0-4b88-9f97-8b6cf35139d2@oracle.com>
Date: Thu, 5 Nov 2026 12:07:03 -0800
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: CPython sandbox escape
Content-Type: text/plain; charset=utf-8

https://www.runsybil.com/blog/cpython-0-day-vulnerabilities-threaten-the-ai-supply-chain
reports on a sandbox escape it found in CPython:
> The bug we discovered abuses CPython's handling of generic types to
> accomplish a breakout. We exploited it using objects that sandboxes
> make available in every template, even in empty sandbox contexts.

(See the above URL for full details.)

They were not successful in reporting it as a security vulnerability:
> CPython’s stance on our memory bugs is documented, and was reiterated to us:
> 
>   > CPython does not support sandboxing untrusted Python code as a security
>   > boundary, so escapes from such a sandbox are not vulnerabilities in
>   > Python and should be reported to the sandbox’s developers instead.
> 
> The maintainers of Jinja provided a response at odds with CPython’s guidance:
> 
>   > Report this to cpython. It's problem with cpython, not with Jinja.

Instead they submitted a fix as https://github.com/python/cpython/pull/155761
but note that upstream is not backporting it to security releases.

-- 
         -Alan Coopersmith-                 alan.coopersmith@...cle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

