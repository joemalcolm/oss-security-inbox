X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/20/37
Message-ID: <1f181059-4d08-444b-9c99-a28fc6b5d14f@cpansec.org>
Date: Tue, 20 Oct 2026 22:26:04 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-108518: DBI versions before 1.656 for Perl crash via type confusion in dbi_profile when a database handle is destroyed under a Profile Path with an {attr} element
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-108518                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-108518

   Distribution:  DBI
       Versions:  before 1.656
       MetaCPAN: https://metacpan.org/dist/DBI
       VCS Repo: https://github.com/perl5-dbi/dbi


DBI versions before 1.656 for Perl crash via type confusion in
dbi_profile when a database handle is destroyed under a Profile Path
with an {attr} element

Description
-----------
DBI versions before 1.656 for Perl crash via type confusion in
dbi_profile when a database handle is destroyed under a Profile Path
with an {attr} element.

An {attr} element names a database handle attribute, which dbi_profile
reads from the handle's inner hash. It expects the inner handle as a
reference and dereferences it, but a handle that is being destroyed
hands back the inner hash itself, so the dereference yields the hash's
bucket array. A type check on that pointer usually fails and the call
goes unprofiled. When the memory it addresses passes the check, the
attribute lookup dereferences a NULL or invalid pointer and the process
dies on SIGSEGV.

The Path is set by the application, by the Profile handle attribute, or
by the DBI_PROFILE environment variable, so
`DBI_PROFILE={ImplementorClass}` can crash an unmodified program.

Problem types
-------------
- CWE-843 Access of Resource Using Incompatible Type ('Type Confusion')

Solutions
---------
Upgrade to DBI 1.656 or later.

References
----------
https://github.com/perl5-dbi/dbi/security/advisories/GHSA-7393-6f8r-fhh3
https://github.com/perl5-dbi/dbi/commit/c2ff4df575d7af625bb4d0d1ef7539f90b22d8b2.patch
https://metacpan.org/release/HMBRAND/DBI-1.656/changes

Credits
-------
Henrik Teichmann, finder



