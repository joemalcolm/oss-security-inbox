X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/30/4
Message-ID: <4ab2e655-f975-4e53-aae2-452d1c588f56@cpansec.org>
Date: Tue, 30 Jun 2026 12:21:25 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-13766: DBIx::QuickORM versions before 0.000026 for Perl allow SQL injection via unquoted SQL identifiers
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-13766                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-13766
   Distribution:  DBIx-QuickORM
       Versions:  before 0.000026

       MetaCPAN:  https://metacpan.org/dist/DBIx-QuickORM
       VCS Repo:  https://github.com/exodist/DBIx-QuickORM/


DBIx::QuickORM versions before 0.000026 for Perl allow SQL injection
via unquoted SQL identifiers

Description
-----------
DBIx::QuickORM versions before 0.000026 for Perl allow SQL injection
via unquoted SQL identifiers.

The default SQL builder, a SQL::Abstract subclass, sets bindtype in its
constructor but never quote_char, so SQL::Abstract emits identifiers
verbatim. Caller-supplied identifiers (order_by, where-clause column
keys, field and returning lists, upsert columns, and join aliases)
reach the SQL string raw, while values are placeholder-bound and
unaffected.

A caller that forwards untrusted input to an affected identifier
position, such as a user-controlled order_by value, enables SQL
injection: the row order can be made to depend on a sub-select over
columns the query never selected, and the where and update identifier
positions permit further data disclosure and tampering.

Problem types
-------------
- CWE-89 Improper Neutralization of Special Elements used in an SQL
   Command ('SQL Injection')

Solutions
---------
Upgrade to DBIx::QuickORM 0.000026 or later.


References
----------
https://github.com/exodist/DBIx-QuickORM/commit/43d7684682050780f056f25e1879191fb0a3265e.patch
https://metacpan.org/release/EXODIST/DBIx-QuickORM-0.000026/changes



