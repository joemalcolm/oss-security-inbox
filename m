X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/15/2
Message-ID: <06231e20-46c4-4230-951e-3fdbf05ee115@cpansec.org>
Date: Sat, 15 Aug 2026 13:10:35 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-73193: DBI versions before 1.652 for Perl allow a heap out-of-bounds write on 32-bit perl via an integer wraparound in the output buffer size computed by preparse
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-73193                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-73193
   Distribution:  DBI
       Versions:  before 1.652

       MetaCPAN:  https://metacpan.org/dist/DBI
       VCS Repo:  https://github.com/perl5-dbi/dbi


DBI versions before 1.652 for Perl allow a heap out-of-bounds write on
32-bit perl via an integer wraparound in the output buffer size
computed by preparse

Description
-----------
DBI versions before 1.652 for Perl allow a heap out-of-bounds write on
32-bit perl via an integer wraparound in the output buffer size
computed by preparse.

preparse reserves its output buffer with `newSV(strlen(statement) * 7 +
16)`, budgeting seven output bytes per input byte for the longest
':p99999' expansion. The product is computed in STRLEN, which is 32
bits wide on a 32-bit perl build, so a statement of 613,566,757 bytes
multiplies to 4,294,967,299, wraps modulo 2^32 to 3, and reserves 19
bytes. The parser then copies the statement out through a raw pointer
with no capacity check, writing the whole 585 MB input past the end of
the allocation. The 99,999 placeholder limit does not bound this path,
which is reached by ordinary non-placeholder content.

Any caller that passes an untrusted statement of that length to
preparse on a 32-bit perl gets a heap out-of-bounds write of attacker
controlled bytes. Builds with a 64-bit STRLEN are not affected, since
the wrap there needs a statement of about 2.3 exabytes.

Problem types
-------------
- CWE-190 Integer Overflow or Wraparound
- CWE-787 Out-of-bounds Write

Workarounds
-----------
On 32-bit depoyments that cannot be upgraded, limit the size of SQL
statements under 292 megabytes.

Solutions
---------
Upgrade to DBI 1.652 or later.

References
----------
https://www.cve.org/CVERecord?id=CVE-2026-14739
https://github.com/perl5-dbi/dbi/security/advisories/GHSA-wj3v-c3hh-mhqr
https://github.com/perl5-dbi/dbi/commit/c751ae5a5a6f56c2f8284f37c1f4d43500352ef1.patch

Credits
-------
Chrysostomos Manousis, reporter



