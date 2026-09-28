X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/28/14
Message-ID: <a1f0c38b-5c22-4d1c-ada2-e1e63cc60124@cpansec.org>
Date: Mon, 28 Sep 2026 17:10:19 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-85644: XS::Parse::Infix versions from 0.40 through 0.49 for Perl treat a number as an array reference
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-85644                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-85644

   Distribution:  XS-Parse-Keyword
       Versions:  from 0.40 through 0.49
       MetaCPAN:  https://metacpan.org/dist/XS-Parse-Keyword


XS::Parse::Infix versions from 0.40 through 0.49 for Perl treat a
number as an array reference

Description
-----------
XS::Parse::Infix versions from 0.40 through 0.49 for Perl treat a
number as an array reference.

The wrapper function XS::Parse::Infix generates for a list-associative
infix operator checks whether arguments are array references, but it
tests using SvRV() rather than SvROK(). SvRV() reads a union slot that
only holds a referent once SvROK(sv) is true, so the guard never
validates that it is a reference. For an IV or NV that slot holds the
number itself, SvRV() returns the caller's value and SvTYPE()
dereferences it at offset 12. This will generally result in a
segmentation fault.

An application that hands the wrapper a list built from decoded input
(for example, from JSON) lets whoever supplies a number in that list
choose the address that the interpreter dereferences.

An ordinary string's byte 12 is rarely SVt_PVAV so the guard croaks by
luck, but an attacker-crafted string carrying 0x0b there passes, and
the buffer is then used as an AV head, with AvARRAY taken from bytes
16-23 and its entries pushed onto the Perl stack as live SVs.

A simple proof-of-concept uses the zip operator:

     use Syntax::Operator::Zip 'zip';

     my @args = ([1], 2);
     zip(@args);

Problem types
-------------
- CWE-843 Access of Resource Using Incompatible Type ('Type Confusion')
- CWE-125 Out-of-bounds Read

Workarounds
-----------
For deployments that cannot upgrade, ensure that correct arguments
(only array references where they are expected) are passed to
list-associative operators that are defined with XS::Parse::Infix, such
as those in Syntax::Operator::Zip.

Solutions
---------
Upgrade to XS-Parse-Keyword 0.50 or later.

References
----------
https://metacpan.org/release/PEVANS/XS-Parse-Keyword-0.50/changes
https://metacpan.org/release/PEVANS/XS-Parse-Keyword-0.50/diff/PEVANS/XS-Parse-Keyword-0.49#src/infix.c

