X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/23/2
Message-ID:  <SYBPR01MB6336894E7246524117892137EEC02@SYBPR01MB6336.ausprd01.prod.outlook.com>
Date: Thu, 23 Jul 2026 10:00:42 +0000
From: Peter Gutmann <pgut001@...auckland.ac.nz>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: Re: 432 Linux kernel CVEs
Content-Type: text/plain; charset=utf-8

David A. Wheeler <dwheeler@...eeler.com> writes:

>Obviously not everyone agrees with this policy, but please note that there
>*are* arguments for it.

Just to clarify, I'm not disagreeing with it either.  Given for example Daniel
Stenberg's comments on them, one being "CVE-2020-19909 is everything that is
wrong with CVEs",
https://daniel.haxx.se/blog/2023/08/26/cve-2020-19909-is-everything-that-is-wrong-with-cves/,
I can see arguments both for and against.  So I borrowed the term "malicious
compliance" from Risky Biz with a certain amount of glee rather than as a
criticism.

>There is a VERY VERY SIMPLE way to not have this problem: be ready to update
>your kernel.

Alternatively, don't build a product that relies on updates every two weeks in
order to remain secure.  That's not pontificating, it's pointing out that
something that turns your ceiling fan on and off doesn't need to run Linux
when a minimal RTOS, or just an event loop on bare metal, will do the same
thing.

>If it is *vitally* important that your kernel *never* need to updated *ever*,
>then a traditional kernel like Linux, *BSD, MacOS, iOS, or Windows is NOT
>what you're looking for. What you need is a formally-proved kernel.

That's the textbook answer.  The practical answer is "what you need is a
minimal RTOS".  It doesn't need any formal proof, it just needs to be basic
enough that there's nothing there to attack.  Not being able to get a shell on
something because there isn't one is probably the single biggest win you can
have in device security.

Peter.
