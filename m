X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/24/11
Message-ID: <87mrt69s0e.fsf@gentoo.org>
Date: Thu, 24 Sep 2026 23:57:53 +0100
From: Sam James <sam@...too.org>
To: oss-security@...ts.openwall.com
Cc: Sebastian Pipping <sping@...too.org>
Subject: XSS vulnerability in <ansi2html-1.9.4
Content-Type: text/plain; charset=utf-8

Hi,

Normally, I don't find XSS particularly interesting, but I saw
writeup leverging a bug in <ansi2html-1.9.4 which others may also find
of interest: https://blog.arusekk.pl/posts/srht-account-takeover/

In short, crafted lines in a build log on sr.ht's Ci service were
transformed into HTML by ansi2html, and allowed XSS for viewers of that log.

I've attached a plain text version of the post but it's not particularly
easy to read, just doing so for archival. I'd recommend reading it on
the website.

thanks,
sam


View attachment "srht-account-takeover.txt" of type "text/plain" (15649 bytes)

Download attachment "signature.asc" of type "application/pgp-signature" (419 bytes)
