X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/12/4
Message-ID: <70d8130a-2ef3-49a3-943b-7d34e91b829c@cpansec.org>
Date: Fri, 12 Jun 2026 15:43:21 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-9638: Crypt::PBKDF2 versions before 0.261630 for Perl generate insecure random values for salts
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-9638                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-9638
   Distribution:  Crypt-PBKDF2
       Versions:  before 0.261630

       MetaCPAN:  https://metacpan.org/dist/Crypt-PBKDF2
       VCS Repo:  https://github.com/arodland/Crypt-PBKDF2


Crypt::PBKDF2 versions before 0.261630 for Perl generate insecure
random values for salts

Description
-----------
Crypt::PBKDF2 versions before 0.261630 for Perl generate insecure
random values for salts.

These versions use the built-in rand function, which is predictable and
unsuitable for cryptography.

Problem types
-------------
- CWE-338 Use of Cryptographically Weak Pseudo-Random Number Generator
   (PRNG)

Solutions
---------
Upgrade to version 0.261630 or later.


References
----------
https://metacpan.org/dist/Crypt-PBKDF2/source/lib/Crypt/PBKDF2.pm#L86-93
https://metacpan.org/release/ARODLAND/Crypt-PBKDF2-0.261630/changes



