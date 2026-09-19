X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/19/6
Message-Id: <CC0D9B08-B3CA-44D1-88A4-79A856B5DE22@stig.io>
Date: Sat, 19 Sep 2026 17:18:54 +0200
From: Stig Palmquist <stig@...g.io>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-82560: Pod::Text versions before 6.1.1 for Perl allow CPU and memory exhaustion formatting a POD document whose =over nesting drives the margin to the output width
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-82560                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-82560

  Distribution:  podlators
      Versions:  before 6.1.1
      MetaCPAN:  https://metacpan.org/dist/podlators
      VCS Repo:  https://github.com/rra/podlators

  Distribution:  perl
      Versions:  through 5.45.2
      MetaCPAN:  https://metacpan.org/dist/perl
      VCS Repo:  https://github.com/Perl/perl5


Pod::Text versions before 6.1.1 for Perl allow CPU and memory
exhaustion formatting a POD document whose =over nesting drives the
margin to the output width

Description
-----------
Pod::Text versions before 6.1.1 for Perl allow CPU and memory
exhaustion formatting a POD document whose =over nesting drives the
margin to the output width.

Each =over adds its indent to the margin, which wrap() subtracts from
the output width to get the space available for text. When that space
reaches zero, the line-splitting substitution matches the empty string,
and the loop consumes no input while appending the margin padding on
every pass.

Formatting an attacker-supplied POD document never returns, and the
output grows until memory is exhausted.

Problem types
-------------
- CWE-835 Loop with Unreachable Exit Condition ('Infinite Loop')

Workarounds
-----------
Until a Perl release carries the fix, install podlators v6.1.1 or
later, which takes precedence over the bundled copy.

Solutions
---------
Upgrade to podlators v6.1.1 or later.

References
----------
https://metacpan.org/release/RRA/podlators-v6.1.0/source/lib/Pod/Text.pm#L245-261
https://github.com/rra/podlators/commit/70510174f69eb54aa6d617bde4e1402cd9b7c61f.patch
https://metacpan.org/release/RRA/podlators-v6.1.1/changes


