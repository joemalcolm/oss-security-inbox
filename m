X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/20/4
Message-ID: <1a51664d-3a49-4617-a13e-deecfa54aeab@cpansec.org>
Date: Mon, 20 Jul 2026 08:05:20 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-6656: Crypt::Password versions through 0.28 for Perl are susceptible to timing attacks
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-6656                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-6656
   Distribution:  Crypt-Password
       Versions:  through 0.28

       MetaCPAN:  https://metacpan.org/dist/Crypt-Password


Crypt::Password versions through 0.28 for Perl are susceptible to
timing attacks

Description
-----------
Crypt::Password versions through 0.28 for Perl are susceptible to
timing attacks.

The check_password method uses the built-in eq operator. This allows
discrepancies in timing to be used to guess the underlying hash.

Problem types
-------------
- CWE-208 Observable Timing Discrepancy

Workarounds
-----------
This module has not been updated since 2012.

Users should migrate to an alternative solution.


References
----------
https://metacpan.org/release/DRSTEVE/Crypt-Password-0.28/source/lib/Crypt/Password.pm#L190-193
https://rt.cpan.org/Ticket/Display.html?id=180162



