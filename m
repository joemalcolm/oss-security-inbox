X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/07/17
Message-ID: <97887315-a634-414c-b269-62184a79dbc6@cpansec.org>
Date: Tue, 7 Jul 2026 23:08:32 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-14740: DBI versions before 1.650 for Perl read one byte out-of-bounds in preparse when deleting an initial SQL comment
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-14740                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-14740
   Distribution:  DBI
       Versions:  before 1.650

       MetaCPAN:  https://metacpan.org/dist/DBI
       VCS Repo:  https://github.com/perl5-dbi/dbi


DBI versions before 1.650 for Perl read one byte out-of-bounds in
preparse when deleting an initial SQL comment

Description
-----------
DBI versions before 1.650 for Perl read one byte out-of-bounds in
preparse when deleting an initial SQL comment.

The preparse method normalises SQL and removes comments. When the SQL
starts with a comment line, the deletion of that line during
normalisation led to an out-of-bounds read by one byte. The result is a
fault on memory-hardened builds and nondeterministic newline retention
on normal builds.

Problem types
-------------
- CWE-125 Out-of-bounds Read

Workarounds
-----------
Remove initial comments from SQL statements before passing them to DBI.


Solutions
---------
Upgrade to DBI version 1.650 or later.


References
----------
https://github.com/perl5-dbi/dbi/commit/fc16f9e8b3dd5c65caf1867781ab2bfe2fadcc01.patch
https://github.com/perl5-dbi/dbi/security/advisories/GHSA-35f4-f8m9-w8xg
https://metacpan.org/release/HMBRAND/DBI-1.650/changes



