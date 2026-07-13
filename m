X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/13/7
Message-Id: <844A4E81-311A-48E1-9D04-B635CD81E7AE@stig.io>
Date: Mon, 13 Jul 2026 17:51:10 +0200
From: Stig Palmquist <stig@...g.io>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-57433: Storable versions before 3.41 for Perl have a signed integer overflow when deserializing a crafted SX_HOOK record
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-57433                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-57433
  Distribution:  Storable
      Versions:  before 3.41

      MetaCPAN:  https://metacpan.org/dist/Storable
      VCS Repo:  https://github.com/Perl/perl5


Storable versions before 3.41 for Perl have a signed integer overflow
when deserializing a crafted SX_HOOK record

Description
-----------
Storable versions before 3.41 for Perl have a signed integer overflow
when deserializing a crafted SX_HOOK record.

retrieve_hook_common reads a signed 32-bit item count from an SX_HOOK
record and calls av_extend with that count plus one. A count of I32_MAX
wraps the addition to a negative value.

A crafted blob passed to thaw or retrieve triggers the overflow;
av_extend receives the negative count and dies with a panic,
terminating the deserialization.

Problem types
-------------
- CWE-190 Integer Overflow or Wraparound

Solutions
---------
Upgrade to Storable 3.41 or later.


References
----------
https://github.com/Perl/perl5/commit/e4f681784bcdeaa91ff02a2fa4cdcae5c46779d7.patch


