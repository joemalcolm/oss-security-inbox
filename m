X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/10/8
Message-ID: <ee519c9f-41b6-4b75-84c5-7dd7aeabb4d1@cpansec.org>
Date: Sat, 10 Oct 2026 13:48:43 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-107794: ExtUtils::Typemaps::STL::List versions before 1.07 for Perl allocate a 32 GiB array on an empty list
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-107794                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-107794

   Distribution:  ExtUtils-Typemaps-Default
       Versions:  before 1.07
       MetaCPAN: https://metacpan.org/dist/ExtUtils-Typemaps-Default
       VCS Repo:  https://github.com/tsee/extutils-typemap-default


ExtUtils::Typemaps::STL::List versions before 1.07 for Perl allocate a
32 GiB array on an empty list

Description
-----------
ExtUtils::Typemaps::STL::List versions before 1.07 for Perl allocate a
32 GiB array on an empty list.

The OUTPUT typemaps call av_extend( av, len-1 ). On an empty list, this
undeflows, and av_extend will allocate an array with 2^32 slots,
leading to memory exhaustion.

Note that a similar issue was fixed in ExtUtils::Typemaps::STL::Vector
version 1.05.

Problem types
-------------
- CWE-191 Integer Underflow (Wrap or Wraparound)

Solutions
---------
Upgrade to ExtUtils::Typemaps::Default version 1.07 or later.

Rebuild any modules that use ExtUtils::Typemaps::Default as part of
their build process.

References
----------
https://metacpan.org/release/SMUELLER/ExtUtils-Typemaps-Default-1.07/changes
https://rt.cpan.org/Public/Bug/Display.html?id=91213
https://www.cve.org/CVERecord?id=CVE-2013-10076

Timeline
--------
- 2013-12-06: Issue with ExtUtils::Typemaps::STL::Vector reported for
   version 1.04.
- 2013-12-06: ExtUtils::Typemaps::Default version 1.05 released with
   fix for CVE-2013-10076.
- 2026-10-08: Issue with ExtUtils::Typemaps::STL::List reported to
   CPANSec. CVE-2013-10076 assigned retroactively.
- 2026-10-09: ExtUtils::Typemaps::Default version 1.07 released with
   fix for CVE-2026-107794.



