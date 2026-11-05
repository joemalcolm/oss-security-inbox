X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/05/12
Message-ID: <8733tfvw1a.fsf@gentoo.org>
Date: Thu, 05 Nov 2026 20:54:41 +0000
From: Sam James <sam@...too.org>
To: oss-security@...ts.openwall.com
Subject: Re: CPython sandbox escape
Content-Type: text/plain; charset=utf-8

Alan Coopersmith <alan.coopersmith@...cle.com> writes:

> https://www.runsybil.com/blog/cpython-0-day-vulnerabilities-threaten-the-ai-supply-chain
> reports on a sandbox escape it found in CPython:
>> The bug we discovered abuses CPython's handling of generic types to
>> accomplish a breakout. We exploited it using objects that sandboxes
>> make available in every template, even in empty sandbox contexts.
>
> (See the above URL for full details.)
>
> They were not successful in reporting it as a security vulnerability:
>> CPython’s stance on our memory bugs is documented, and was reiterated to us:
>>   > CPython does not support sandboxing untrusted Python code as a
>> security
>>   > boundary, so escapes from such a sandbox are not vulnerabilities in
>>   > Python and should be reported to the sandbox’s developers instead.
>> The maintainers of Jinja provided a response at odds with CPython’s
>> guidance:
>>   > Report this to cpython. It's problem with cpython, not with
>> Jinja.

https://lwn.net/Articles/574215/

>
> Instead they submitted a fix as https://github.com/python/cpython/pull/155761
> but note that upstream is not backporting it to security releases.

sam

Download attachment "signature.asc" of type "application/pgp-signature" (419 bytes)
