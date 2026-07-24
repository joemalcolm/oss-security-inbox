X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/4
Message-ID: <f15c3b64-d526-42d3-a3db-3aad8eff075f@cpansec.org>
Date: Fri, 24 Jul 2026 10:16:01 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-16634: TOML::XS versions before 0.06 for Perl bundle an unsupported and vulnerable version of tomlc99
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-16634                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-16634
   Distribution:  TOML-XS
       Versions:  before 0.06

       MetaCPAN:  https://metacpan.org/dist/TOML-XS
       VCS Repo:  https://github.com/FGasper/p5-TOML-XS


TOML::XS versions before 0.06 for Perl bundle an unsupported and
vulnerable version of tomlc99

Description
-----------
TOML::XS versions before 0.06 for Perl bundle an unsupported and
vulnerable version of tomlc99.

The tomlc99 library is no longer maintained, and has an uncontrolled
recursion vulnerability publicly reported in the issue tracker.

Any caller that passes untrusted TOML to from_toml risks a stack
overflow from a deeply-nested document.

TOML::XS version 0.06 or later uses the successor tomlc17 library.

Problem types
-------------
- CWE-1104 Use of Unmaintained Third Party Components
- CWE-1395 Dependency on Vulnerable Third-Party Component

Workarounds
-----------
Only parse trusted TOML files.


Solutions
---------
Upgrade to TOML::XS version 0.06 or later.


References
----------
https://metacpan.org/release/FELIPE/TOML-XS-0.06/changes
https://raw.githubusercontent.com/cktan/tomlc99/29076dfd095bbbbd50a3c1b2760d29f4b83e74ac/README.md
https://github.com/cktan/tomlc99/issues/97
https://github.com/cktan/tomlc17
https://toml.io/en/v1.0.0

Timeline
--------
- 2021-08-12: Version 0.05 released.
- 2025-05-02: The README for tomlc99 was updated to say that it was
   obsolete.
- 2026-03-07: Vulnerability posted to tomlc99 issue tracker.
- 2026-07-24: Version 0.06 released.



