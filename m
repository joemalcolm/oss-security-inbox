X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/28/13
Message-ID: <81b19504-3ce3-4221-b9bc-cc9e7ef7df16@cpansec.org>
Date: Mon, 28 Sep 2026 17:06:29 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-88816: DBI versions before 1.654 for Perl incorrectly treat numeric values as strings in FetchHashKeyName
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-88816                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-88816

   Distribution:  DBI
       Versions:  before 1.654
       MetaCPAN:  https://metacpan.org/dist/DBI
       VCS Repo:  https://github.com/perl5-dbi/dbi


DBI versions before 1.654 for Perl incorrectly treat numeric values as
strings in FetchHashKeyName

Description
-----------
DBI versions before 1.654 for Perl incorrectly treat numeric values as
strings in FetchHashKeyName.

fetchrow_hashref uses the string pointer of the FetchHashKeyName
attribute as the key name without stringifying it first. When
FetchHashKeyName has been set to an integer (IV) or floating-point (NV)
value, that pointer is invalid, so reading the key name triggers a
segmentation fault.

This can be triggered with the following code:

    my $dbh = DBI->connect( "dbi:ExampleP:", "", "",
        { RaiseError => 0, PrintError => 0 } );
    $dbh->{FetchHashKeyName} = 42;

    my $sth = $dbh->prepare("select mode, size, name from .");
    $sth->execute;
    $sth->fetchrow_hashref;

Problem types
-------------
- CWE-843 Access of Resource Using Incompatible Type ('Type Confusion')

Solutions
---------
Upgrade to DBI 1.654 or later.

References
----------
https://github.com/perl5-dbi/dbi/security/advisories/GHSA-f4qx-mr9m-q2hq
https://github.com/perl5-dbi/dbi/commit/70962570212dc60a5428098cf2a0462ad5945851.patch
https://metacpan.org/release/HMBRAND/DBI-1.654/changes

Credits
-------
Harsh Raj Singhania, finder



