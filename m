X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/15/3
Message-ID: <0a9c8f2f-7ba0-499c-8452-cb790675a4bf@cpansec.org>
Date: Sat, 15 Aug 2026 13:11:35 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-73194: DBI versions before 1.652 for Perl allow a heap out-of-bounds write via an unvalidated numeric placeholder that sets the binder counter in preparse
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-73194                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-73194
   Distribution:  DBI
       Versions:  before 1.652

       MetaCPAN:  https://metacpan.org/dist/DBI
       VCS Repo:  https://github.com/perl5-dbi/dbi


DBI versions before 1.652 for Perl allow a heap out-of-bounds write via
an unvalidated numeric placeholder that sets the binder counter in
preparse

Description
-----------
DBI versions before 1.652 for Perl allow a heap out-of-bounds write via
an unvalidated numeric placeholder that sets the binder counter in
preparse.

preparse reserves seven output bytes per input byte, the width of the
longest ':p99999' expansion. The ':N' branch parses the number with
`atoi(src)` and assigns it to the binder counter with no range check,
so a statement containing ':2147483648' leaves the counter negative
(-2147483648 with glibc, where atoi wraps). Each following '?' then
expands through `sprintf(start, ":p%d", idx++)` to ':p-2147483648', 14
bytes with the terminating NUL where the buffer budgets 7. The
placeholder limit added in 1.650 tests the counter against 99,999,
which a negative counter passes.

Any caller that preparses an untrusted statement into ':pN' style
placeholders gets a heap out-of-bounds write that grows with the number
of '?' marks following the poisoned placeholder. The '?' and '%s'
return styles compare the parsed number against the expected sequence
and error out, and are unaffected.

Problem types
-------------
- CWE-1284 Improper Validation of Specified Quantity in Input
- CWE-787 Out-of-bounds Write

Workarounds
-----------
For deployments that cannot be upgraded, limit SQL statements to 99,999
placeholders.

Solutions
---------
Upgrade to DBI 1.652 or later.

References
----------
https://github.com/perl5-dbi/dbi/security/advisories/GHSA-623j-hfpc-mrc4
https://github.com/perl5-dbi/dbi/commit/29b72ae7d2a8114a734a55840bf1c45b89207809.patch
https://www.cve.org/CVERecord?id=CVE-2026-14739
https://www.cve.org/CVERecord?id=CVE-2026-10879

Credits
-------
Harsh Raj Singhania, finder



