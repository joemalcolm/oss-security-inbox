X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/14/15
Message-ID: <af986899-f819-4332-993b-cab5f802148d@cpansec.org>
Date: Tue, 14 Jul 2026 16:39:48 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-15392: DBD::File versions before 1.651 for Perl do not ensure the table file is not a symlink to an untrusted location
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-15392                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-15392
   Distribution:  DBI
       Versions:  before 1.651

       MetaCPAN:  https://metacpan.org/dist/DBI
       VCS Repo:  https://github.com/perl5-dbi/dbi


DBD::File versions before 1.651 for Perl do not ensure the table file
is not a symlink to an untrusted location

Description
-----------
DBD::File versions before 1.651 for Perl do not ensure the table file
is not a symlink to an untrusted location.

The complete_table_name method builds the absolute table file path
without checking whether the file is a symbolic link. A link inside the
data directory can point to a table file at any path outside of the
configured f_dir and f_dir_search directories.

Callers of file-based drivers can read or write files outside of the
data directory.

Problem types
-------------
- CWE-22 Improper Limitation of a Pathname to a Restricted Directory
   ('Path Traversal')
- CWE-59 Improper Link Resolution Before File Access ('Link Following')

Solutions
---------
Upgrade to version 1.651 or later.


References
----------
https://github.com/perl5-dbi/dbi/security/advisories/GHSA-mh3j-xwf4-jrqw
https://metacpan.org/release/HMBRAND/DBI-1.651/changes
https://github.com/perl5-dbi/dbi/commit/96d62dfe4528bf56fe13f413ed323d4252531728.patch



