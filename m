X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/22/4
Message-Id: <0F05E8F4-FFF8-42B6-805C-004E0454B003@stig.io>
Date: Tue, 22 Sep 2026 02:57:51 +0200
From: Stig Palmquist <stig@...g.io>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-93712: Dancer2 versions from 2.1.0 before 2.2.0 for Perl serve files from outside public_dir via relative path segments in the File route handler
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-93712                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-93712

  Distribution:  Dancer2
      Versions:  from 2.1.0 before 2.2.0
      MetaCPAN:  https://metacpan.org/dist/Dancer2
      VCS Repo:  https://github.com/PerlDancer/Dancer2


Dancer2 versions from 2.1.0 before 2.2.0 for Perl serve files from
outside public_dir via relative path segments in the File route handler

Description
-----------
Dancer2 versions from 2.1.0 before 2.2.0 for Perl serve files from
outside public_dir via relative path segments in the File route
handler.

The handler joins the request path onto public_dir without collapsing
relative segments, and checks only that the result is a readable
regular file. A request for `/../outside.txt` escapes public_dir, and
percent-encoding the dots reaches the same file.

The handler is off by default. An application is affected once it names
File in route_handlers and sets static_handler to 0, which otherwise
refuses a dot segment before the route runs.

Any file the worker process can read is served to an unauthenticated
request, including the application's config.yml above public_dir.

Problem types
-------------
- CWE-22 Improper Limitation of a Pathname to a Restricted Directory
  ('Path Traversal')

Solutions
---------
Upgrade to Dancer2 2.2.0 or later.

References
----------
https://github.com/PerlDancer/Dancer2/security/advisories/GHSA-6xw8-v24c-m783
https://github.com/PerlDancer/Dancer2/commit/2446a09ffb83fef71cc75c327bd6e4b1f007b885.patch
https://metacpan.org/release/CROMEDOME/Dancer2-2.2.0/changes

Timeline
--------
- 2026-09-16: Version 2.2.0 released with fix.


