X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/10/7
Message-ID: <273591a6-5b7e-4184-93a8-bc51961618ed@cpansec.org>
Date: Sat, 10 Oct 2026 13:46:45 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-107373: ExtUtils::Typemaps::STL::String versions before 1.06 for Perl T_STD_STRING typemap may read the SV length before stringifying the argument
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-107373                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-107373

   Distribution:  ExtUtils-Typemaps-Default
       Versions:  before 1.06
       MetaCPAN: https://metacpan.org/dist/ExtUtils-Typemaps-Default
       VCS Repo:  https://github.com/tsee/extutils-typemap-default


ExtUtils::Typemaps::STL::String versions before 1.06 for Perl
T_STD_STRING typemap may read the SV length before stringifying the
argument

Description
-----------
ExtUtils::Typemaps::STL::String versions before 1.06 for Perl
T_STD_STRING typemap may read the SV length before stringifying the
argument.

The typemap uses

     $var = std::string( SvPV_nolen($arg), SvCUR($arg) )

However, evaluation order for C++ arguments is not specified, and some
compilers may produce code that evalutes SvCUR($arg) first.

When $arg is not a string (for example, an interger, number or a
reference) then SvCUR will return an invalid value, and the program may
abort or segfault.

Problem types
-------------
- CWE-125 Out-of-bounds Read

Workarounds
-----------
For deployments that cannot be upgraded, ensure that arguments passed
to modules that use ExtUtils::Typemaps::Default are strngified.

Solutions
---------
Upgrade to ExtUtils::Typemaps::Default version 1.06 or later.

Rebuild any modules that use ExtUtils::Typemaps::Default as part of
their build process.

References
----------
https://metacpan.org/release/SMUELLER/ExtUtils-Typemaps-Default-1.06/changes
https://github.com/tsee/extutils-typemap-default/commit/a6b9c298b34ddadc582961403e715d292f82a22d
https://rt.cpan.org/Public/Bug/Display.html?id=94110
https://www.cve.org/CVERecord?id=CVE-2026-80490

Timeline
--------
- 2014-03-22: Issue reported in bugtracker for
   ExtUtils::Typemaps::Default version 1.05.
- 2014-06-10: Fix committed to the repository. Bugtracker issue closed.
- 2026-09-30: Issue reported to CPANSec.
- 2026-10-08: ExtUtils::Typemaps::Default version 1.06 released with a
   fix.



