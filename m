X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/03/3
Message-ID: <8cf59a09-8464-4f28-83df-7b17b66104ef@cpansec.org>
Date: Tue, 3 Nov 2026 07:52:19 +0000
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-74846: Catalyst::Plugin::Authentication versions before 0.10029 for Perl allow timing attacks on stored passwords via eq comparisons in the legacy password verifier
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-74846                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-74846

   Distribution:  Catalyst-Plugin-Authentication
       Versions:  before 0.10029
       MetaCPAN: https://metacpan.org/dist/Catalyst-Plugin-Authentication
       VCS Repo: 
https://github.com/perl-catalyst/Catalyst-Plugin-Authentication


Catalyst::Plugin::Authentication versions before 0.10029 for Perl allow
timing attacks on stored passwords via eq comparisons in the legacy
password verifier

Description
-----------
Catalyst::Plugin::Authentication versions before 0.10029 for Perl allow
timing attacks on stored passwords via eq comparisons in the legacy
password verifier.

CVE-2026-5091 was fixed in the realm-based verifier. The legacy
verifier, used by the deprecated login method, compares clear-text
passwords, crypt hashes and base64 digests with eq, so the comparison
time depends on how many leading bytes match.

A remote attacker can use response-time differences to guess the stored
password or hash.

Problem types
-------------
- CWE-208 Observable Timing Discrepancy

Solutions
---------
Upgrade to Catalyst-Plugin-Authentication 0.10029 or later.

References
----------
https://metacpan.org/release/ETHER/Catalyst-Plugin-Authentication-0.10029/changes
https://github.com/perl-catalyst/Catalyst-Plugin-Authentication/commit/ba4435f1fa6b641e6c8793c88b5433afa83ceafa.patch
https://www.cve.org/CVERecord?id=CVE-2026-5091

