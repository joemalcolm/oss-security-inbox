X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/14/2
Message-ID:  <SY4PR01MB6332E573E9457FC8FB277529EEE72@SY4PR01MB6332.ausprd01.prod.outlook.com>
Date: Sun, 14 Jun 2026 09:20:04 +0000
From: Peter Gutmann <pgut001@...auckland.ac.nz>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>, "jcb62281@...il.com" <jcb62281@...il.com>
Subject: Re: CVE-2026-9641: Crypt::PBKDF2 versions before 0.261630 for Perl have a weak default algorithm and number of iterations
Content-Type: text/plain; charset=utf-8

Jacob Bachmeyer <jcb62281@...il.com> writes:

>Does the shorter output length (128 bits for MD5; 160 bits for SHA-1) cause
>problems?  Has the general advance of computing power caught up to HMAC-MD5
>and HMAC-SHA1, or do they remain secure? (Similar to how DES remains unbroken
>in the cryptanalytic sense, but its 56-bit keyspace is now vulnerable to
>brute force.)

Anything above around 2^110 is computationally infeasible for the indefinite
future (for reference, the entire global Bitcoin hash rate is 2^94 per year).

Peter.
