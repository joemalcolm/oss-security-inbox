X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/06/8
Message-ID: <47d7da36-ea87-4550-938e-d7ff3831116a@cpansec.org>
Date: Fri, 6 Nov 2026 07:48:22 +0000
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-121006: HTTP::Body versions before 1.24_02 for Perl parse the trailer in quadratic time
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-121006                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-121006

   Distribution:  HTTP-Body
       Versions:  before 1.24_02
       MetaCPAN:  https://metacpan.org/dist/HTTP-Body
       VCS Repo:  https://github.com/libwww-perl/HTTP-Body


HTTP::Body versions before 1.24_02 for Perl parse the trailer in
quadratic time

Description
-----------
HTTP::Body versions before 1.24_02 for Perl parse the trailer in
quadratic time.

Everything after the last chunk in the same call to add() is parsed
with HTTP::Headers, which takes time quadratic in the number of fields
of one name.  For example, it takes several seconds to parse 16 KiB of
"a:" lines.

A remote attackercan exhause the CPU with a single request.

HTTP::Body version 1.25 limits the size and number of lines in the
trailer.

Problem types
-------------
- CWE-770 Allocation of Resources Without Limits or Throttling

Solutions
---------
Upgrade to HTTP::Body version 1.24_02 or later.

References
----------
https://metacpan.org/release/GETTY/HTTP-Body-1.24_02/changes
https://github.com/libwww-perl/HTTP-Body/commit/983dd4ca3b863ab513240b02c91c3114fb299389.patch

