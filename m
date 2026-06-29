X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/29/18
Message-ID: <e7c04000-aa3f-4915-a56c-fc2e9c58f89b@cpansec.org>
Date: Mon, 29 Jun 2026 20:41:47 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-13593: CSS::Minifier::XS versions before 0.14 for Perl have a memory leak when the entire document is minified away
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-13593                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-13593
   Distribution:  CSS-Minifier-XS
       Versions:  before 0.14

       MetaCPAN:  https://metacpan.org/dist/CSS-Minifier-XS
       VCS Repo:  https://github.com/bleargh45/CSS-Minifier-XS


CSS::Minifier::XS versions before 0.14 for Perl have a memory leak when
the entire document is minified away

Description
-----------
CSS::Minifier::XS versions before 0.14 for Perl have a memory leak when
the entire document is minified away.

The minify function has a memory leak when processing a document
containing only characters to be removed, such as comments and
whitespace.

Problem types
-------------
- CWE-401 Missing Release of Memory after Effective Lifetime

Solutions
---------
Upgrade to CSS::Minifier::XS version 0.14 or later.


References
----------
https://metacpan.org/release/GTERMARS/CSS-Minifier-XS-0.14/changes



