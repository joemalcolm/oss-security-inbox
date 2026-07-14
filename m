X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/14/16
Message-Id: <4A9CB9F7-5EDC-4EA2-8557-5D0F66CB1D03@stig.io>
Date: Tue, 14 Jul 2026 19:11:01 +0200
From: Stig Palmquist <stig@...g.io>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-15747: Mojolicious versions from 4.59 before 9.48 for Perl expose a stable representation of the session CSRF token to a BREACH compression oracle
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-15747                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-15747
  Distribution:  Mojolicious
      Versions:  from 4.59 before 9.48

      MetaCPAN:  https://metacpan.org/dist/Mojolicious
      VCS Repo:  https://github.com/mojolicious/mojo


Mojolicious versions from 4.59 before 9.48 for Perl expose a stable
representation of the session CSRF token to a BREACH compression oracle

Description
-----------
Mojolicious versions from 4.59 before 9.48 for Perl expose a stable
representation of the session CSRF token to a BREACH compression
oracle.

_csrf_token generates and caches one token per session and returns the
same value on every call, and _csrf_field places that value in a hidden
`csrf_token` input. When a response carrying the token also echoes
attacker-controlled input and is gzip-compressed, the chosen values and
the resulting compressed lengths form a BREACH oracle.

An attacker able to query it can recover the token and pass
csrf_protect validation.

Problem types
-------------
- CWE-204 Observable Response Discrepancy
- CWE-352 Cross-Site Request Forgery (CSRF)

Solutions
---------
Upgrade to Mojolicious 9.48 or later.


References
----------
https://github.com/mojolicious/mojo/commit/01921fbbbbeca2d1397e082d4a647f9b84c24e27.patch
https://metacpan.org/release/SRI/Mojolicious-9.48/changes

Timeline
--------
- 2026-07-14: Version 9.48 released with fix.


