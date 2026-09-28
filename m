X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/28/12
Message-ID: <50a7b174-e92f-4883-a991-64e067435131@cpansec.org>
Date: Mon, 28 Sep 2026 17:05:45 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-88815: DBI versions before 1.654 for Perl incorrectly treat numeric values as strings in sql_type_cast_svpv
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-88815                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-88815

   Distribution:  DBI
       Versions:  before 1.654
       MetaCPAN:  https://metacpan.org/dist/DBI
       VCS Repo:  https://github.com/perl5-dbi/dbi


DBI versions before 1.654 for Perl incorrectly treat numeric values as
strings in sql_type_cast_svpv

Description
-----------
DBI versions before 1.654 for Perl incorrectly treat numeric values as
strings in sql_type_cast_svpv.

When casting to SQL_NUMERIC, sql_type_cast_svpv passes the string
pointer and length of the SV to grok_number without stringifying it
first. An integer (IV) or floating-point (NV) value has no valid string
pointer, so grok_number reads from an invalid address, triggering a
segmentation fault.

This is reachable in Perl using the sql_type_cast function:

   my $num = 42;
   DBI::sql_type_cast( $num, DBI::SQL_NUMERIC, 0 );

Problem types
-------------
- CWE-843 Access of Resource Using Incompatible Type ('Type Confusion')

Solutions
---------
Upgrade to DBI 1.654 or later.

References
----------
https://github.com/perl5-dbi/dbi/security/advisories/GHSA-c8vq-w3wr-6979
https://github.com/perl5-dbi/dbi/commit/e5ad87e5602da995d28b4d65df222368b58d6702.patch
https://metacpan.org/release/HMBRAND/DBI-1.654/changes

Credits
-------
Harsh Raj Singhania, finder



