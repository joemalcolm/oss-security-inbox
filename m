X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/30/10
Message-ID: <ae41fbd4-3f16-4704-8762-310bdf8d3cc1@cpansec.org>
Date: Fri, 30 Oct 2026 12:26:56 +0000
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-87768: DateTime::Lite versions before 0.8.1 for Perl allow CPU exhaustion via a per-day loop when adding seconds
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-87768                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-87768

   Distribution:  DateTime-Lite
       Versions:  before 0.8.1
       MetaCPAN:  https://metacpan.org/dist/DateTime-Lite
       VCS Repo:  https://gitlab.com/deguest/DateTime-Lite


DateTime::Lite versions before 0.8.1 for Perl allow CPU exhaustion via
a per-day loop when adding seconds

Description
-----------
DateTime::Lite versions before 0.8.1 for Perl allow CPU exhaustion via
a per-day loop when adding seconds.

_normalize_leap_seconds crosses day boundaries one day at a time, so
add(seconds => $n) on an object with a non-floating time zone takes
about |$n|/86400 iterations, and nothing limits $n. The XS
implementation and the pure-Perl fallback both have the loop.

An attacker who controls the number of seconds added can keep the
process busy for as long as they choose.

Problem types
-------------
- CWE-407 Inefficient Algorithmic Complexity

Solutions
---------
Upgrade to DateTime-Lite v0.8.1 or later.

References
----------
https://metacpan.org/release/JDEGUEST/DateTime-Lite-v0.8.1/changes



