X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/12/3
Message-ID: <1d0f101f-2d7e-42ee-9244-141781127d6f@cpansec.org>
Date: Fri, 12 Jun 2026 14:23:48 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2017-20240: Crypt::PBKDF2 versions before 0.261630 for Perl are vulnerable to timing attacks
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2017-20240                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2017-20240
   Distribution:  Crypt-PBKDF2
       Versions:  before 0.261630

       MetaCPAN:  https://metacpan.org/dist/Crypt-PBKDF2
       VCS Repo:  https://github.com/arodland/Crypt-PBKDF2


Crypt::PBKDF2 versions before 0.261630 for Perl are vulnerable to
timing attacks

Description
-----------
Crypt::PBKDF2 versions before 0.261630 for Perl are vulnerable to
timing attacks.

These versions use Perl's built-in eq comparison. Discrepancies in
timing could be used to guess the underlying derived-key.

Problem types
-------------
- CWE-208 Observable Timing Discrepancy

Workarounds
-----------
Apply the patch from the referenced pull request.


Solutions
---------
Upgrade to version 0.261630 or later.


References
----------
https://github.com/arodland/Crypt-PBKDF2/pull/6
https://metacpan.org/release/ARODLAND/Crypt-PBKDF2-0.161520/source/lib/Crypt/PBKDF2.pm#L123-148
https://metacpan.org/release/ARODLAND/Crypt-PBKDF2-0.261630/changes

Timeline
--------
- 2017-12-11: Issue reported as pull request
- 2026-06-11: Version 0.261630 released with a fix



