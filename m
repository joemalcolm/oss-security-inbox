X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/13/1
Message-ID:  <SYBPR01MB63360900057350E410E9D86AEE192@SYBPR01MB6336.ausprd01.prod.outlook.com>
Date: Sat, 13 Jun 2026 01:37:19 +0000
From: Peter Gutmann <pgut001@...auckland.ac.nz>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: Re: CVE-2026-9641: Crypt::PBKDF2 versions before 0.261630 for Perl have a weak default algorithm and number of iterations
Content-Type: text/plain; charset=utf-8

Robert Rothenberg <rrwo@...nsec.org> writes:

>Crypt::PBKDF2 versions before 0.261630 for Perl have a weak default algorithm
>and number of iterations.
>
>The default algorithm is HMAC-SHA1, which should only be used for legacy
>systems.

Minor nit, there's actually nothing wrong with HMAC-SHA1 since the HMAC
construct prevents all of the attacks on SHA1.  Even the rather broken MD5 is
still fine if used in an HMAC construct.

Peter.
