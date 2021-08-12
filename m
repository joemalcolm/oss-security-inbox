X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/08/13/1
Message-ID: <YRWF6v8z5rgdewsM@sol.nexus.lan>
Date: Thu, 12 Aug 2021 20:35:28 +0000
From: John Helmert III <jchelmert3@...teo.net>
To: oss-security@...ts.openwall.com
Subject: Re: Polipo: denial-of-service using range
Content-Type: text/plain; charset=utf-8

I'm only able to reproduce such a heap overflow when specifying a Range
header with a valid range, e.g. "2-3" whereas the original Perl script
tested an invalid range of "3-2".

Download attachment "signature.asc" of type "application/pgp-signature" (834 bytes)
