X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/21/15
Message-ID:  <SYDP300MB26667054F34F423B01008BB84EEE662@SYDP300MB266670.AUSP300.PROD.OUTLOOK.COM>
Date: Wed, 21 Oct 2026 09:04:45 +0000
From: Peter Gutmann <pgut001@...auckland.ac.nz>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
CC: Dennis Jackson <djackson@...illa.com>
Subject: Re: eMudhra Intermediates Compromise
Content-Type: text/plain; charset=utf-8

Solar Designer <solar@...nwall.com> writes:

>I guess all other keys corresponding to CA root and intermediate certs will
>now be audited for having potentially weak private keys.

Let's Encrypt has done this, at least for public keys, for awhile now, for
example they apply Fermat's factorisation method to detect unsuitable keys
with too-close p+q (I think it was L-E anyway, I found it when I was checking
my own code which does the same thing).

Peter.
