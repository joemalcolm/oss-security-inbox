X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/24/1
Message-ID: <87mrt7cite.fsf@gentoo.org>
Date: Thu, 24 Sep 2026 06:35:57 +0100
From: Sam James <sam@...ct.info>
To: oss-security@...ts.openwall.com
Subject: Re: Fwd: Tor Project Forum: Security Release 0.4.9.12
Content-Type: text/plain; charset=utf-8

Sam James <sam@...ct.info> writes:

> Here's the relevant release notes at the link in the email below:
> """
> Changes in version 0.4.9.12 - 2026-09-08
>   Another security release containing several high security fixes reported by
>   the exciting and controversial world of LLMs. One important note is that new
>   protocol versions are recommended for clients and relays (41316).
>   Furthermore, authorities will NOT accept relay descriptor containing TAP keys
>   anymore hence the importance for all relays to upgrade to the latest 0.4.9.x
>   stable version. We very strongly recommend upgrading as soon as possible.

These bugs are public now. They're accessible at
https://gitlab.torproject.org/tpo/core/tor/-/work_items/XXXX.

>
>   o Major bugfixes (security):
> [...]
>
>     - Fix a bug where a hostile cache could trick a client into falsely
>       believing that certain relays' microdescriptors or router
>       descriptors were unusable. Fixes bug 41358; bugfix on 0.2.6.1-alpha
>       or earlier. Tracked as TROVE-2026-034.

From a quick look, this appears to be the most significant one, as a
malicious guard can influence circuit building to relays of its
choosing, without the tampering being detected by tor.

> [....]

sam

Download attachment "signature.asc" of type "application/pgp-signature" (419 bytes)
