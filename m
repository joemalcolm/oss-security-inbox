X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/21/8
Message-ID: <al_Adqw5WhhLWX_9@netmeister.org>
Date: Tue, 21 Jul 2026 14:54:46 -0400
From: Jan Schaumann <jschauma@...meister.org>
To: oss-security@...ts.openwall.com
Subject: 432 Linux kernel CVEs
Content-Type: text/plain; charset=utf-8

Hello,

As observed on social media[1], the Linux kernel
published 432 CVEs between 2026-07-19T09:09 and
2026-07-20T16:27 (in addition to the >40 other CVEs
already published this month alone):

https://lore.kernel.org/linux-cve-announce/

I understand the position that CVEs were always a
flawed way to track or prioritize security changes,
and "but it's the only thing we have" isn't a great
argument in favor.

But this onslaught really shows it's not feasible to
attempt to prioritize individual kernel changes.

You might attempt to process this large set of changes
by pointing an LLM at the intake and asking it to
prioritize them for your environment based on the
additional context you may be able to feed it with,
but if it spits out a dozen today and another 25 the
next, you haven't won much.

Alternatively, you might shrug and wait to see which
of these will get a logo and catchy name in the next
few weeks and then try to focus on those.

Another approach might be to sit back, have a nice cup
of zen, and just always pull all updates and then
update your entire fleet of systems on a weekly basis,
which, yes, I sure would like to be able to do, but
reality keeps getting in my way.

I'm not sure what to do here going forward.

-Jan

[1] https://mstdn.social/@nixCraft@mastodon.social/116953574783239363
