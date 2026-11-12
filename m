X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/12/2
Message-ID: <540dcda0-bfa8-4bf8-8765-bb6d45369bdb@cpansec.org>
Date: Thu, 12 Nov 2026 00:45:50 +0000
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-126673: Data::Dump::Streamer versions before 3.00 for Perl allow code injection via unescaped Regexp patterns in _dump_qr
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-126673                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-126673

   Distribution:  Data-Dump-Streamer
       Versions:  before 3.00
       MetaCPAN:  https://metacpan.org/dist/Data-Dump-Streamer
       VCS Repo:  https://github.com/demerphq/Data-Dump-Streamer


Data::Dump::Streamer versions before 3.00 for Perl allow code injection
via unescaped Regexp patterns in _dump_qr

Description
-----------
Data::Dump::Streamer versions before 3.00 for Perl allow code injection
via unescaped Regexp patterns in _dump_qr.

A Regexp's pattern is written into a qr literal without escaping "$" or
"@", so "@{[ ... ]}" and "${\ ... }" in the pattern run as code when
the dump is evaluated. An already escaped delimiter gets a second
backslash, which leaves the delimiter bare and ends the qr literal
early.

An attacker who supplies a pattern that an application compiles, dumps
and later restores with eval or do can run arbitrary Perl code.

Problem types
-------------
- CWE-94 Improper Control of Generation of Code

Workarounds
-----------
For deployments that cannot upgrade to 3.00, which requires Perl 5.18
and a C compiler, do not restore dumps that contain Regexps compiled
from untrusted input.

Solutions
---------
Upgrade to Data-Dump-Streamer 3.00 or later.

References
----------
https://metacpan.org/release/YVES/Data-Dump-Streamer-3.00/source/Changes

