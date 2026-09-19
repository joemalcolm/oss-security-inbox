X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/19/4
Message-ID: <af1a12d7-278e-4579-bbc0-13c1ee1550a7@cpansec.org>
Date: Sat, 19 Sep 2026 11:47:09 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-78030: DBI versions before 1.653 for Perl load arbitrary modules via unvalidated dbm_type and dbm_mldbm attributes in DBD::DBM
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-78030                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-78030

   Distribution:  DBI
       Versions:  before 1.653
       MetaCPAN:  https://metacpan.org/dist/DBI
       VCS Repo:  https://github.com/perl5-dbi/dbi


DBI versions before 1.653 for Perl load arbitrary modules via
unvalidated dbm_type and dbm_mldbm attributes in DBD::DBM

Description
-----------
DBI versions before 1.653 for Perl load arbitrary modules via
unvalidated dbm_type and dbm_mldbm attributes in DBD::DBM.

DBD::DBM passes the dbm_type and dbm_mldbm connect attributes to
require without checking that the value names a module. require treats
a path-shaped string as a literal filename and does not consult @INC,
so the attribute chooses the file that Perl loads and runs.

The MLDBM::Serializer:: prefix that DBD::DBM prepends to dbm_mldbm is
not a boundary: only the :: separators are rewritten to /, so a value
containing / traverses out of the serializer directory. The value is
also assigned to $MLDBM::Serializer, which MLDBM requires the same way
when it ties the table.

A caller that lets an untrusted party influence either attribute, for
example through a DSN fragment or a parameter that selects a storage
backend, runs the file-scope code of whatever module the value names.

For example,

     my $dsn = "dbi:DBM:f_dir=/var/db;dbm_type=../../Untrusted.pm"
     my $dbh = DBI->connect( $dsn );

Note that DBD::Gofer forwards connect attributes to the server side,
and DBI::ProxyServer checks only that a DSN starts with a driver
prefix.

Problem types
-------------
- CWE-470 Use of Externally-Controlled Input to Select Classes or Code
   ('Unsafe Reflection')

Solutions
---------
Upgrade to DBI version 1.653 or later, or apply the upstream patch.

References
----------
https://metacpan.org/release/HMBRAND/DBI-1.653/changes
https://github.com/perl5-dbi/dbi/commit/315c6ce703b8b3cbe9188062d9ec80730293554a.patch
https://github.com/perl5-dbi/dbi/security/advisories/GHSA-wqmw-wqwx-3fr7

Credits
-------
Harsh Raj Singhania, finder



