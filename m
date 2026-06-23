X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/23/3
Message-ID:  <SYBPR01MB6336C186F21EB8B97F677CBBEEEE2@SYBPR01MB6336.ausprd01.prod.outlook.com>
Date: Tue, 23 Jun 2026 08:10:04 +0000
From: Peter Gutmann <pgut001@...auckland.ac.nz>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: Re: Common PKCS#7 / CMS parsing issues in OpenSSL, WolfSSL, Bouncy Castle, & GnuPG
Content-Type: text/plain; charset=utf-8

Alan Coopersmith <alan.coopersmith@...cle.com> writes:

>The common failure is accepting the sender provided length for the
>authentication tag, and not enforcing the minimum length specified in the RFC
>- allowing an attacker to specify a one-byte tag length and then use brute
>force to determine which of the 256 possible values matches the first byte of
>the actual tag.

As with far too many other RFCs, the required skill for them isn't
implementing them correctly, it's knowing which bits you need to ignore in
order to implement them appropriately.  I just checked my code and it
hardcodes an allowed MAC length range of 16 ... 64 bytes for RFC 6476 use
(Authenticated-Enveloped-Data, but with an explicit MAC), so no matter what
any RFC says you can't feed it a MAC value less than 128 bits.

And an additional thought, these are all very high-visibility libraries and
therefore obvious targets for checking whether they get it right.  Given the
failure rate with those, I wonder how many other lesser-known ones also got it
wrong?

Peter.
