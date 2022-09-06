X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/09/06/8
Message-ID: <CAGUWgD8HasZRDG_BPCMTa2sZs1Kk4yFZd7R0oc=nfG2+JA3Sqw@mail.gmail.com>
Date: Tue, 6 Sep 2022 18:14:38 +0300
From: Georgi Guninski <gguninski@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: sagemath denial of service with abort() in gmp: overflow in mpz type
Content-Type: text/plain; charset=utf-8

The DoS can be a .cgi or in a web service, allowing only numerical and
math functions input.
As pointed by Jeffrey Walton, the problem is in libgmp, not in sage,
and ubuntu asks for sending them crash info, including the coredump.
To avoid the gmp crash in |2^2^64|, sage catches signals and ignores SIGABRT.
The sage ``feature'' with more info is at:
https://trac.sagemath.org/ticket/34492
avoid crash and print better error message when gmp calls abort()
