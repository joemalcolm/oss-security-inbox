X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/14/9
Message-ID: <1b27f4cf-c895-47ff-b13f-fca68568dd3b@cpansec.org>
Date: Tue, 14 Jul 2026 10:45:35 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-15043: DBI::SQL::Nano versions from 1.42 before 1.651 for Perl have inverted <= and >= SQL operators on text
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-15043                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-15043
   Distribution:  DBI
       Versions:  from 1.42 before 1.651

       MetaCPAN:  https://metacpan.org/dist/DBI
       VCS Repo:  https://github.com/perl5-dbi/dbi


DBI::SQL::Nano versions from 1.42 before 1.651 for Perl have inverted
<= and >= SQL operators on text

Description
-----------
DBI::SQL::Nano versions from 1.42 before 1.651 for Perl have inverted
<= and >= SQL operators on text.

DBI::SQL::Nano, DBI's built-in mini-SQL engine, evaluated WHERE
predicates incorrectly in some cases. In the non-numeric string branch
of the is_matched method, <= was evaluated using Perl's ge operator,
and >= was evaluated using Perl's le operator.

SQL::Nano is the fallback query engine for DBI's file-backed drivers
(DBD::File, DBD::DBM, CSV-style drivers) whenever SQL::Statement is not
installed, and is forced whenever DBI_SQL_NANO=1. Queries over such
tables use these predicates directly.

The impact depends on the context. Where an application relies on a
WHERE clause to filter file-backed data for policy or authorization, an
inverted <=/>= comparison silently returns the wrong rows.

Problem types
-------------
- CWE-480 Use of Incorrect Operator

Workarounds
-----------
For deployments that cannot upgrade, apply the patch or install
SQL::Statement.


Solutions
---------
Upgrade to DBI 1.651 or later.


References
----------
https://github.com/perl5-dbi/dbi/security/advisories/GHSA-mv45-ff6j-x9jp
https://github.com/perl5-dbi/dbi/commit/e9742ef85a75867cbd696860e3bf3e32b681f98d.patch

Timeline
--------
- 2004-03-12: Version 1.42 released with DBI::SQL::Nano.
- 2026-07-10: Patch that fixes DBI::SQL::Nano merged.
- 2026-07-14: Version 1.651 released.



