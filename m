X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/20/3
Message-ID: <71031d79-c246-435d-bbc2-1ff75fe0e903@cpansec.org>
Date: Mon, 20 Jul 2026 08:04:45 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-16235: Crypt::Password versions through 0.28 for Perl generate insecure random values for salts
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-16235                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-16235
   Distribution:  Crypt-Password
       Versions:  through 0.28

       MetaCPAN:  https://metacpan.org/dist/Crypt-Password


Crypt::Password versions through 0.28 for Perl generate insecure random
values for salts

Description
-----------
Crypt::Password versions through 0.28 for Perl generate insecure random
values for salts.

These versions use the built-in rand function, which is predictable and
unsuitable for cryptography.

Problem types
-------------
- CWE-338 Use of Cryptographically Weak Pseudo-Random Number Generator
   (PRNG)

Workarounds
-----------
Users can generate a salt manually using a module such as
Crypt::URandom::Token, and pass the salt directly to the password and
crypt_password methods.

This module has not been updated since 2012.

Users should migrate to an alternative solution.


References
----------
https://metacpan.org/release/DRSTEVE/Crypt-Password-0.28/source/lib/Crypt/Password.pm#L306-309



