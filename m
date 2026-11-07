X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/07/10
Message-ID: <74ed9272-58ca-4d1e-a4ed-a25c412d7f9a@cpansec.org>
Date: Sat, 7 Nov 2026 11:18:32 +0000
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-121265: SQL::Abstract versions before 2.000003 for Perl allow SQL injection via an arrayref column value in insert and update
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-121265                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-121265

   Distribution:  SQL-Abstract
       Versions:  before 2.000003
       MetaCPAN:  https://metacpan.org/dist/SQL-Abstract
       VCS Repo:  https://github.com/dbsrgits/sql-abstract


SQL::Abstract versions before 2.000003 for Perl allow SQL injection via
an arrayref column value in insert and update

Description
-----------
SQL::Abstract versions before 2.000003 for Perl allow SQL injection via
an arrayref column value in insert and update.

With the array_datatypes option off, which is the default, insert(),
update() and values() treat an arrayref column value as literal SQL.
Its first element goes into the SQL text unescaped and the rest become
bind values. A JSON array, or a repeated form field decoded as an
arrayref, is such a value.

An application that passes request data as column values to insert or
update with the default options allows SQL injection.

Releases before 2.000003 also treat an arrayref in generate() as
literal SQL, including through AUTOLOAD when allow_autoload is on,
whatever array_datatypes is set to.

Problem types
-------------
- CWE-89 Improper Neutralization of Special Elements used in an SQL
   Command ('SQL Injection')

Solutions
---------
Upgrade to SQL-Abstract 2.000003 or later.

References
----------
https://metacpan.org/release/GETTY/SQL-Abstract-2.000003/changes
https://metacpan.org/release/GETTY/SQL-Abstract-2.000003/diff/GETTY/SQL-Abstract-2.000001_04

Timeline
--------
- 2026-11-03: SQL::Abstract version 2.000001_05 was released with an
   incomplete fix for this issue.
- 2026-11-05: SQL::Abstract version 2.000002 was released based on
   version 2.000001_05.
- 2026-11-06: SQL::Abstract version 2.000003 was released.

