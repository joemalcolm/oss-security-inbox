X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/08/6
Message-ID: <984c78a6-4618-4682-a4f2-6127a240afb0@cpansec.org>
Date: Wed, 8 Jul 2026 13:31:37 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-14454: Imager versions before 1.033 for Perl treat unsigned EXIF IFD entry counts as signed
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-14454                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-14454
   Distribution:  Imager
       Versions:  before 1.033

       MetaCPAN:  https://metacpan.org/dist/Imager
       VCS Repo:  https://github.com/tonycoz/imager


Imager versions before 1.033 for Perl treat unsigned EXIF IFD entry
counts as signed

Description
-----------
Imager versions before 1.033 for Perl treat unsigned EXIF IFD entry
counts as signed.

Imager mishandled large EXIF IFD entry count values, treating them as
negative numbers.  This could lead to an attempt to allocate a block
nearly the size of the address space, which fails and kills the
process.

An attacker could craft an image with EXIF data that terminates a
worker process.

Problem types
-------------
- CWE-196 Unsigned to Signed Conversion Error
- CWE-789 Memory Allocation with Excessive Size Value

Solutions
---------
Upgrade to version 1.033 or later.


References
----------
https://metacpan.org/release/TONYC/Imager-1.033/changes
https://github.com/tonycoz/imager/commit/06f01a5d0fd591259aeba589370d6888384a6b6d.patch



