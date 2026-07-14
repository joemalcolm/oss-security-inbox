X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/14/14
Message-ID: <b8275403-563a-4059-9c8c-d561c41d3462@cpansec.org>
Date: Tue, 14 Jul 2026 16:39:05 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-60081: DBI::ProfileData versions before 1.651 for Perl do not limit the path index
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-60081                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-60081
   Distribution:  DBI
       Versions:  before 1.651

       MetaCPAN:  https://metacpan.org/dist/DBI
       VCS Repo:  https://github.com/perl5-dbi/dbi


DBI::ProfileData versions before 1.651 for Perl do not limit the path
index

Description
-----------
DBI::ProfileData versions before 1.651 for Perl do not limit the path
index.

The path index column of profile dump files is used to allocate an
array of data for the parser. An unbounded value allows an attacker to
specify a large index and consume available memory.

Problem types
-------------
- CWE-770 Allocation of Resources Without Limits or Throttling

Solutions
---------
Upgrade to version 1.651 or later.


References
----------
https://github.com/perl5-dbi/dbi/security/advisories/GHSA-ww49-w4mv-jrr4
https://metacpan.org/release/HMBRAND/DBI-1.651/changes
https://github.com/perl5-dbi/dbi/commit/6764e755e83ee1ebb1b40760e5b53eb50960bd7a.patch



