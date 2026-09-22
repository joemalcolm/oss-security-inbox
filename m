X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/22/1
Message-Id: <F9A23577-9BB7-4278-9368-57D73D9ADDB9@stig.io>
Date: Tue, 22 Sep 2026 02:54:18 +0200
From: Stig Palmquist <stig@...g.io>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-93709: Dancer2 versions before 2.2.0 for Perl serve a layout as a page when an equivalent spelling of its path misses the guard in the AutoPage handler
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-93709                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-93709

  Distribution:  Dancer2
      Versions:  before 2.2.0
      MetaCPAN:  https://metacpan.org/dist/Dancer2
      VCS Repo:  https://github.com/PerlDancer/Dancer2


Dancer2 versions before 2.2.0 for Perl serve a layout as a page when an
equivalent spelling of its path misses the guard in the AutoPage
handler

Description
-----------
Dancer2 versions before 2.2.0 for Perl serve a layout as a page when an
equivalent spelling of its path misses the guard in the AutoPage
handler.

The handler compares the request path against the layout directory name
as text, while the lookup that follows canonicalises it. A doubled
slash, a dot segment, a percent-encoded slash, or a different
capitalisation on a case-insensitive filesystem therefore misses the
guard.

The handler is off by default, enabled with auto_page. The layout
wrapping every page is already public, so this discloses one of the
application's other layouts.

Problem types
-------------
- CWE-41 Improper Resolution of Path Equivalence

Solutions
---------
Upgrade to Dancer2 2.2.0 or later.

References
----------
https://github.com/PerlDancer/Dancer2/issues/1823
https://github.com/PerlDancer/Dancer2/commit/293fce08812b0928f34ab2d7b9357450707c3630.patch
https://github.com/PerlDancer/Dancer2/commit/753b385350a54acb8d4b686723890205268634a8.patch
https://metacpan.org/release/CROMEDOME/Dancer2-2.2.0/changes

Timeline
--------
- 2026-09-16: Version 2.2.0 released with fix.


