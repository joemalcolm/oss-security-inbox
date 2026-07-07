X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/07/16
Message-ID: <3fe6b19c-8ef9-4ca2-a620-261745ce22e6@cpansec.org>
Date: Tue, 7 Jul 2026 23:06:50 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-14380: DBI versions before 1.650 for Perl are vulnerable to code injection via caller-influenced Profile
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-14380                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-14380
   Distribution:  DBI
       Versions:  before 1.650

       MetaCPAN:  https://metacpan.org/dist/DBI
       VCS Repo:  https://github.com/perl5-dbi/dbi


DBI versions before 1.650 for Perl are vulnerable to code injection via
caller-influenced Profile

Description
-----------
DBI versions before 1.650 for Perl are vulnerable to code injection via
caller-influenced Profile.

When a string is assigned to a DBI handle's Profile attribute, DBI
splits it into path, package and arguments, and interpolates the
package part in a string eval with no validation of the package name.

Any caller-influenced value that reaches the Profile attribute is
therefore arbitrary Perl code execution, including calls to run system
commands.

The Profile attribute can be set from three different sources that can
carry untrusted data: the DBI_PROFILE environment variable, a direct
attribute assignment, and a DSN driver-attribute clause
dbi:Driver(Profile=>SPEC):db.

An attacker controlling any of those inputs runs arbitrary Perl in the
host process. The strongest remote position is a network-exposed
DBI::Gofer / DBI::ProxyServer whose per-request DSN reaches the Profile
attribute, letting a client execute code on the broker host.

Problem types
-------------
- CWE-95 Improper Neutralization of Directives in Dynamically Evaluated
   Code (Eval Injection)

Solutions
---------
Upgrade to DBI version 1.650 or later.


References
----------
https://github.com/perl5-dbi/dbi/commit/b73d5d9901767fc1d16b6661ef08fbed4532e259.patch
https://github.com/perl5-dbi/dbi/security/advisories/GHSA-ch8w-hxc2-v557
https://metacpan.org/release/HMBRAND/DBI-1.650/changes


