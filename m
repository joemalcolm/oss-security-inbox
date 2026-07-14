X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/14/13
Message-ID: <11e8c352-5318-4566-ada9-8a82d8428529@cpansec.org>
Date: Tue, 14 Jul 2026 16:36:34 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-60082: DBI versions before 1.651 for Perl do not enforce statement handle consistency with the row
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-60082                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-60082
   Distribution:  DBI
       Versions:  before 1.651

       MetaCPAN:  https://metacpan.org/dist/DBI
       VCS Repo:  https://github.com/perl5-dbi/dbi


DBI versions before 1.651 for Perl do not enforce statement handle
consistency with the row

Description
-----------
DBI versions before 1.651 for Perl do not enforce statement handle
consistency with the row.

When the statement handle had no fields but the source row was
non-empty, the internal row-buffer helper would read from a negative
array index.

This could be triggered by a caller supplying inconsistent metadata and
rows to the prepare method.

Problem types
-------------
- CWE-125 Out-of-bounds Read

Solutions
---------
Upgrade to version 1.651 or later.


References
----------
https://github.com/perl5-dbi/dbi/security/advisories/GHSA-rwhc-hhmv-cjvg
https://metacpan.org/release/HMBRAND/DBI-1.651/changes
https://github.com/perl5-dbi/dbi/commit/397868704291bbf0989b97e2c0661189890653e2.patch



