X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/04/6
Message-ID: <36282188-23dc-47be-b585-3e935fd9e959@cpansec.org>
Date: Wed, 4 Nov 2026 14:40:40 +0000
From: Robert Rothenberg <rrwo@...nsec.org>
To: oss-security@...ts.openwall.com
Subject: SQL-Abstract versions before 2.000001_04 for Perl (3 CVEs)
Content-Type: text/plain; charset=utf-8

CVE-2026-121007
   SQL::Abstract versions from 1.90_01 before 2.000001_04 for Perl allow
   SQL injection via the where values of a nested statement in an
   identifier position

CVE-2026-121008
   SQL::Abstract::Tree versions before 2.000001_04 for Perl allow
   cross-site scripting via unescaped SQL text and bind values in the
   html profile

CVE-2026-121009
   SQL::Abstract versions from 1.90_01 before 2.000001_04 for Perl skip
   the injection_guard check for function names given with -func


========================================================================
CVE-2026-121007                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-121007

   Distribution:  SQL-Abstract
       Versions:  from 1.90_01 before 2.000001_04
       MetaCPAN:  https://metacpan.org/dist/SQL-Abstract
       VCS Repo:  https://github.com/dbsrgits/sql-abstract


SQL::Abstract versions from 1.90_01 before 2.000001_04 for Perl allow
SQL injection via the where values of a nested statement in an
identifier position

Description
-----------
SQL::Abstract versions from 1.90_01 before 2.000001_04 for Perl allow
SQL injection via the where values of a nested statement in an
identifier position.

A nested statement such as { -select => ... } in a position where plain
scalars are identifiers treats its own plain scalars as identifiers
too. These positions are the select list, ORDER BY, GROUP BY,
RETURNING, and with the ExtraClauses plugin FROM (-as) and JOIN (to).
The values of the statement's where, having and set clauses, and the
rows of a -values, go into the SQL text instead of the bind list,
unescaped unless quote_char is set. Subselects in a WHERE condition are
not affected.

An application that passes untrusted input as a where value of such a
nested statement, expecting it to be bound, allows SQL injection.

Problem types
-------------
- CWE-89 Improper Neutralization of Special Elements used in an SQL
   Command ('SQL Injection')

Solutions
---------
Upgrade to SQL-Abstract 2.000001_04 or later.

References
----------
https://github.com/dbsrgits/sql-abstract/commit/79fc34e874b4edb441154eccddb04c57d5c1c90e.patch
https://metacpan.org/release/GETTY/SQL-Abstract-2.000001_04/changes


========================================================================
CVE-2026-121008                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-121008

   Distribution:  SQL-Abstract
       Versions:  before 2.000001_04
       MetaCPAN:  https://metacpan.org/dist/SQL-Abstract
       VCS Repo:  https://github.com/dbsrgits/sql-abstract


SQL::Abstract::Tree versions before 2.000001_04 for Perl allow
cross-site scripting via unescaped SQL text and bind values in the html
profile

Description
-----------
SQL::Abstract::Tree versions before 2.000001_04 for Perl allow
cross-site scripting via unescaped SQL text and bind values in the html
profile.

The html profile wraps keywords and placeholders in span elements and
breaks lines with br elements, so its output is meant to go into a page
as is. The format method does not HTML-escape the SQL text or the bind
values it fills in around that markup.

An application that renders SQL formatted with the html profile, such
as in a debug panel or query log, allows an attacker who controls a
bind value or part of the SQL text to embed JavaScript in the page.

Problem types
-------------
- CWE-79 Improper Neutralization of Input During Web Page Generation
   ('Cross-site Scripting')

Solutions
---------
Upgrade to SQL-Abstract 2.000001_04 or later.

References
----------
https://github.com/dbsrgits/sql-abstract/commit/85a75fcde3e09da5181dee07a4eccba76ad94305.patch
https://metacpan.org/release/GETTY/SQL-Abstract-2.000001_04/changes


========================================================================
CVE-2026-121009                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-121009

   Distribution:  SQL-Abstract
       Versions:  from 1.90_01 before 2.000001_04
       MetaCPAN:  https://metacpan.org/dist/SQL-Abstract
       VCS Repo:  https://github.com/dbsrgits/sql-abstract


SQL::Abstract versions from 1.90_01 before 2.000001_04 for Perl skip
the injection_guard check for function names given with -func

Description
-----------
SQL::Abstract versions from 1.90_01 before 2.000001_04 for Perl skip
the injection_guard check for function names given with -func.

injection_guard is documented to apply to every function name, but only
the { -name => ... } shorthand goes through it. The explicit { -func =>
[ $name, ... ] } form puts $name into the SQL unchecked.

An application that relies on injection_guard to reject an untrusted
function name passed with -func allows SQL injection.

Problem types
-------------
- CWE-89 Improper Neutralization of Special Elements used in an SQL
   Command ('SQL Injection')

Solutions
---------
Upgrade to SQL-Abstract 2.000001_04 or later.

References
----------
https://github.com/dbsrgits/sql-abstract/commit/b6e7d991ac588b937e8943a5b28b6837ff276a51.patch
https://metacpan.org/release/GETTY/SQL-Abstract-2.000001_04/changes

