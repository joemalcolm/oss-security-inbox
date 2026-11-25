X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/25/12
Message-ID: <46c86135-2ab5-4371-85ee-1a6430573d21@cpansec.org>
Date: Wed, 25 Nov 2026 22:36:14 +0000
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-135092: PDF::API2 versions before 2.049 for Perl allow unbounded recursion via circular cross-reference chains in readxrtr
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-135092                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-135092

   Distribution:  PDF-API2
       Versions:  before 2.049
       MetaCPAN:  https://metacpan.org/dist/PDF-API2
       VCS Repo:  https://github.com/ssimms/pdfapi2


PDF::API2 versions before 2.049 for Perl allow unbounded recursion via
circular cross-reference chains in readxrtr

Description
-----------
PDF::API2 versions before 2.049 for Perl allow unbounded recursion via
circular cross-reference chains in readxrtr.

When a PDF is opened, readxrtr reads each cross-reference table and
calls itself on the offset in the trailer's /Prev entry. Nothing
records which offsets it has already read, so a /Prev entry pointing
back to an earlier table, or to its own, makes it recurse without end.

An attacker who supplies a crafted PDF can cause a denial of service in
any application that opens it.

Problem types
-------------
- CWE-674 Uncontrolled Recursion

Solutions
---------
Upgrade to PDF-API2 2.049 or later.

References
----------
https://github.com/ssimms/pdfapi2/commit/70a5ab29638bd92205ecc5186ca8728609f0f706.patch
https://metacpan.org/release/SSIMMS/PDF-API2-2.049/changes

