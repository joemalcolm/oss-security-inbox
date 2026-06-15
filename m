X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/15/4
Message-ID: <44658def09168960c639e316d2391ecd@cpansec.org>
Date: Mon, 15 Jun 2026 15:00:59 +0200
From: Timothy Legge <timlegge@...nsec.org>
To: CVE Announce <cve-announce@...urity.metacpan.org>, Oss Security <oss-security@...ts.openwall.com>
Subject: CVE-2026-12205: Crypt::DSA versions before 1.21 for Perl reused the nonce across signatures, leading to private-key recovery
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-12205                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-12205
   Distribution:  Crypt-DSA
       Versions:  before 1.21

       MetaCPAN:  https://metacpan.org/dist/Crypt-DSA
       VCS Repo:  https://github.com/perl-Crypt-OpenPGP/Crypt-DSA


Crypt::DSA versions before 1.21 for Perl reused the nonce across
signatures, leading to private-key recovery

Description
-----------
Crypt::DSA versions before 1.21 for Perl reused the nonce across
signatures, leading to private-key recovery.

Crypt::DSA::sign caches the per-signature nonce material in the Key
object without ever clearing it.

The first sign() on a Key object picks a nonce, and every later sign()
on that same object reuses it, producing an identical "r".

Keys used to sign more than once with an affected version should be
considered compromised.

Problem types
-------------
- CWE-323 Reusing a Nonce, Key Pair in Encryption

Solutions
---------
Upgrade to version 1.21

Revoke any keys that may have been compromised.

Crypt::DSA was deprecated in version 1.20. You should migrate to
another solution.


References
----------
https://metacpan.org/release/TIMLEGGE/Crypt-DSA-1.20/source/lib/Crypt/DSA.pm#L47
https://metacpan.org/release/TIMLEGGE/Crypt-DSA-1.21/changes

Timeline
--------
- 2026-05-16: Maintainer contacted
- 2026-06-13: Maintainer and CPANSec contacted
- 2026-06-14: Fixed version released

Credits
-------
Richard Kettlewell, finder
