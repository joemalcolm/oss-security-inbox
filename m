X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/25/5
Message-ID: <a090f4da-5876-4d45-9c66-2718d32e0263@gmail.com>
Date: Sat, 25 Jul 2026 00:19:05 -0400
From: Demi Marie Obenour <demiobenour@...il.com>
To: oss-security@...ts.openwall.com, Peter Gutmann <pgut001@...auckland.ac.nz>
Subject: Re: 432 Linux kernel CVEs
Content-Type: text/plain; charset=utf-8

On 7/23/26 06:00, Peter Gutmann wrote:
> David A. Wheeler <dwheeler@...eeler.com> writes:
> 
>> Obviously not everyone agrees with this policy, but please note that there
>> *are* arguments for it.
> 
> Just to clarify, I'm not disagreeing with it either.  Given for example Daniel
> Stenberg's comments on them, one being "CVE-2020-19909 is everything that is
> wrong with CVEs",
> https://daniel.haxx.se/blog/2023/08/26/cve-2020-19909-is-everything-that-is-wrong-with-cves/,
> I can see arguments both for and against.  So I borrowed the term "malicious
> compliance" from Risky Biz with a certain amount of glee rather than as a
> criticism.
> 
>> There is a VERY VERY SIMPLE way to not have this problem: be ready to update
>> your kernel.
> 
> Alternatively, don't build a product that relies on updates every two weeks in
> order to remain secure.  That's not pontificating, it's pointing out that
> something that turns your ceiling fan on and off doesn't need to run Linux
> when a minimal RTOS, or just an event loop on bare metal, will do the same
> thing.> >> If it is *vitally* important that your kernel *never* need to updated *ever*,
>> then a traditional kernel like Linux, *BSD, MacOS, iOS, or Windows is NOT
>> what you're looking for. What you need is a formally-proved kernel.
> 
> That's the textbook answer.  The practical answer is "what you need is a
> minimal RTOS".  It doesn't need any formal proof, it just needs to be basic
> enough that there's nothing there to attack.  Not being able to get a shell on
> something because there isn't one is probably the single biggest win you can
> have in device security.

The problem is that that thing wants to talk to the outside world, as
otherwise one would just use a mechanical switch.  That means a complex
protocol stack.  Nowhere near as complex as Linux, but still complex.

Of course, part of the problem is that people insist on making
everything wireless, or at least networked.  The simplest form of
security is "nobody untrusted can physically connect."

Unfortunately, this runs into two nasty real-world problems: money
and aesthetics.  In-the-wall cabling is very expensive to install.
Over-the-wall cabling is much cheaper, but many if not most humans find
it unacceptably ugly.  Security nerds and highly regulated industries
might willing to accept these tradeoffs.  Most people won't be.

What might be a solution to this problem?
-- 
Sincerely,
Demi Marie Obenour (she/her/hers)


Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (834 bytes)
