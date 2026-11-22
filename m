X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/22/6
Message-ID: <871p8c4yt0.fsf@jacob.g10code.de>
Date: Sun, 22 Nov 2026 17:26:51 +0100
From: Werner Koch <wk@...pg.org>
To: Sam James <sam@...too.org>
Cc: oss-security@...ts.openwall.com,  Jiri Kucera <sanczes@...il.com>
Subject: Re: Fwd: Re: [Announce] GnuPG Security Advisory for GPGME (T8557,CVE-2026-129975)
Content-Type: text/plain; charset=utf-8

On Sat, 21 Nov 2026 10:23, Sam James said:
> Todd Zullinger points out something unfortunate: RH had this patched
> downstream years ago.
>
> Werner, I assume that was never sent to you?

Not that I can remember.

We regularly received results from Coverity scans via Redhat.
Fortunately they had already filtered them on plausibility and thus the
mentioned one might have slipped through.  In particular because it was
mostly about memory leakage in error paths.

It is a bit strange that this was a one-off patch and never re-applied
to newer releases.  That part of the code did not receive any serious
updated in the last decades.

FWIW: I recall that Coverity once offered us free scans but we would
have had to sign an NDA with the requirement to immediately apply fixes
only with the consent of Coverity :-(


Shalom-Salam,

   Werner

-- 
The pioneers of a warless world are the youth that
refuse military service.             - A. Einstein

Download attachment "openpgp-digital-signature.asc" of type "application/pgp-signature" (285 bytes)
