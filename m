X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/20/38
Message-ID: <2b3430c7-2ef1-4d8e-9a37-c2cfb91ff9b6@cpansec.org>
Date: Tue, 20 Oct 2026 22:26:09 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-111879: DBI versions before 1.656 for Perl hang on a later open of a DBD::DBM table because a failed open_data does not release the table's lock
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-111879                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-111879

   Distribution:  DBI
       Versions:  before 1.656
       MetaCPAN: https://metacpan.org/dist/DBI
       VCS Repo: https://github.com/perl5-dbi/dbi


DBI versions before 1.656 for Perl hang on a later open of a DBD::DBM
table because a failed open_data does not release the table's lock

Description
-----------
DBI versions before 1.656 for Perl hang on a later open of a DBD::DBM
table because a failed open_data does not release the table's lock.

open_data creates the table's lock file and takes an exclusive flock on
it for a CREATE, before the checks that can croak: a dbm_mldbm value
that is not a module name, a failing tie, or a missing data file. The
croak unwinds before the table object is blessed, so nothing releases
the lock, and the meta data holding the open descriptor stays cached on
the database handle.

The dbm_mldbm and dbm_type values come from the DSN or the connect
attributes, so a caller that chooses the serializer or the storage
backend can trigger the failure.

The flock has no timeout, so a later open of that table (even through a
separate database handle) blocks for as long as the handle holding the
stale lock lives, in the same process or any other.

Problem types
-------------
- CWE-667 Improper Locking

Solutions
---------
Upgrade to DBI 1.656 or later.

References
----------
https://github.com/perl5-dbi/dbi/security/advisories/GHSA-8cx8-9vj9-9x7j
https://github.com/perl5-dbi/dbi/commit/99bbf2ab9d137e6f042a770bd3bbba3bc0b3a901.patch
https://metacpan.org/release/HMBRAND/DBI-1.656/changes



