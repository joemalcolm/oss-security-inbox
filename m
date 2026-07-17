X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/17/9
Message-ID: <baf2c050-7ce1-4111-9873-e3711ec1393a@cpansec.org>
Date: Fri, 17 Jul 2026 13:54:54 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-13082: GD::SecurityImage versions through 1.75 for Perl use rand to generate secrets
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-13082                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-13082
   Distribution:  GD-SecurityImage
       Versions:  through 1.75

       MetaCPAN:  https://metacpan.org/dist/GD-SecurityImage
       VCS Repo:  https://github.com/burak/CPAN-GD-SecurityImage


GD::SecurityImage versions through 1.75 for Perl use rand to generate
secrets

Description
-----------
GD::SecurityImage versions through 1.75 for Perl use rand to generate
secrets.

The random method creates the challenge text used for the CAPTCHA by
sampling characters from an array using Perl's built-in rand function,
and generates a (by default) six-character string.

The built-in rand function is unsuitable for security applications
because it is predictable and reversible.

Problem types
-------------
- CWE-338 Use of Cryptographically Weak Pseudo-Random Number Generator
- CWE-804 Guessable CAPTCHA

Workarounds
-----------
GD::SecurityImage has not been updated since 2018, the module is
flagged as ADOPTME on CPAN, and the git repository is archived as
read-only, which prevents issues and pull requests from being created.

Users are advised to find an alternative solution.

For users who are unable to migrate to an alternative, install
Crypt::URandom::MonkeyPatch (which will override the built-in rand with
a wrapper around Crypt::URandom) and apply the patch.


References
----------
https://www.cve.org/CVERecord?id=CVE-2025-40916
https://security.metacpan.org/patches/G/GD-SecurityImage/1.75/CVE-2026-13082-r1.patch

Timeline
--------
- 2018-12-24: Version 1.75 released.
- 2026-03-10: The git repository was archived.


