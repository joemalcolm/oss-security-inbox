X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/09/12
Message-Id: <26D09784-6FF0-4690-81CC-9F9DE92E8903@stig.io>
Date: Sun, 9 Aug 2026 19:51:48 +0200
From: Stig Palmquist <stig@...g.io>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-15534: Perl versions through 5.45.1 have out-of-bounds heap reads and writes during regular expression matching via an undersized superlinear cache in S_regmatch
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-15534                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-15534
  Distribution:  perl
      Versions:  through 5.45.1

      MetaCPAN:  https://metacpan.org/dist/perl
      VCS Repo:  https://github.com/Perl/perl5


Perl versions through 5.45.1 have out-of-bounds heap reads and writes
during regular expression matching via an undersized superlinear cache
in S_regmatch

Description
-----------
Perl versions through 5.45.1 have out-of-bounds heap reads and writes
during regular expression matching via an undersized superlinear cache
in S_regmatch.

The regex engine's superlinear cache holds one bit per subject position
for each participating WHILEM node, so the bit count is the subject
length plus one times the number of nodes. Nothing checks that product
for positive overflow of the signed 32-bit count: a 286331153 byte
subject matched against a pattern with 15 participating nodes stores
the count as 14, leaving a two byte cache. The cache is then indexed
from the real match position and node number, so reads go past the end
of the allocation, and on failure CACHEsayNO sets a bit past it.

A caller that matches an attacker controlled subject of this size
against a pattern of this shape can crash the process or corrupt heap
memory.

Problem types
-------------
- CWE-190 Integer Overflow or Wraparound
- CWE-125 Out-of-bounds Read
- CWE-787 Out-of-bounds Write

Solutions
---------
Upgrade to a future Perl release, or apply the upstream patches.


References
----------
https://github.com/Perl/perl5/commit/568e6fd238867bb9e99fa3f47cba3169009239e0.patch
https://github.com/Perl/perl5/commit/54cf3d44cbbedd17d774e9a37921963e8fd5d0cb.patch


