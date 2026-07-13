X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/13/6
Message-Id: <4707DBC6-795C-4A34-92C3-01733583170F@stig.io>
Date: Mon, 13 Jul 2026 17:45:47 +0200
From: Stig Palmquist <stig@...g.io>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-57432: Perl versions through 5.43.10 have an integer overflow in S_measure_struct leading to an out-of-bounds heap read in pack and unpack
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-57432                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-57432
  Distribution:  perl
      Versions:  through 5.43.10

      MetaCPAN:  https://metacpan.org/dist/perl
      VCS Repo:  https://github.com/Perl/perl5


Perl versions through 5.43.10 have an integer overflow in
S_measure_struct leading to an out-of-bounds heap read in pack and
unpack

Description
-----------
Perl versions through 5.43.10 have an integer overflow in
S_measure_struct leading to an out-of-bounds heap read in pack and
unpack.

S_measure_struct adds each item's size times its repeat count to a
running total with no overflow check, so a large repeat count in a pack
or unpack template wraps the signed SSize_t total negative. The @, X,
and x position codes then guard their moves with a signed length
comparison that passes when the length is negative, advancing the
buffer pointer out of bounds.

A template derived from untrusted input can read heap memory past the
buffer and return it to the caller.

Problem types
-------------
- CWE-190 Integer Overflow or Wraparound
- CWE-125 Out-of-bounds Read

Solutions
---------
Apply the upstream patches. The fix is included in the Perl 5.43.11
development release.


References
----------
https://github.com/Perl/perl5/commit/5f7eb6bbbe0510964e3fb1d6bb691e5445913e55.patch
https://github.com/Perl/perl5/commit/40754edc72dd3e513d758153c0e2f0215897740e.patch


