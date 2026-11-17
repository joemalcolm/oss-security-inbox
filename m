X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/17/24
Message-ID: <8ea1dfc8-0116-43c8-b825-a80096bee748@pipping.org>
Date: Tue, 17 Nov 2026 19:39:12 +0100
From: Sebastian Pipping <sebastian@...ping.org>
To: oss-security@...ts.openwall.com
Cc: Hanno Böck <hanno@...eck.de>
Subject: Re: Local Privilege Escalation in Debian with LightDM and GTK greeters
Content-Type: text/plain; charset=utf-8

Hello oss-security,


thanks Yves-Alexis for sharing!

I would like to add:

- the link to DSA 6633-1:
   https://lists.debian.org/debian-security-announce/2026/msg00553.html

- that both…
   >=1.32.0-6+deb13u1 on stable and
   >=1.33.1-5         on sid/unstable
   …fix the issue (according to the Debian package changelogs)

- that forky/testing is still vulnerable today (see
   https://security-tracker.debian.org/tracker/source-package/lightdm)

Best



Sebastian

