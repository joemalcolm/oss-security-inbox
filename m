X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/21/27
Message-ID: <64e1726c-2f7d-440f-bcbc-24bc03dffc6d@cpansec.org>
Date: Wed, 21 Oct 2026 21:59:41 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-113811: Algorithm::UrataniTakeda versions from 0.1.5 before 0.1.7 for Perl allow memory exhaustion via a never-cleared failure shift cache in search
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-113811                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-113811

   Distribution:  Algorithm-UrataniTakeda
       Versions:  from 0.1.5 before 0.1.7
       MetaCPAN: https://metacpan.org/dist/Algorithm-UrataniTakeda
       VCS Repo: https://github.com/robrwo/perl-Algorithm-UrataniTakeda


Algorithm::UrataniTakeda versions from 0.1.5 before 0.1.7 for Perl
allow memory exhaustion via a never-cleared failure shift cache in
search

Description
-----------
Algorithm::UrataniTakeda versions from 0.1.5 before 0.1.7 for Perl
allow memory exhaustion via a never-cleared failure shift cache in
search.

The failure shift is cached for each pair of trie state and text
character in a field of the matcher object, and nothing clears it. A
character not seen before at a given state adds an entry that lasts for
the life of the matcher.

An attacker who can submit text with many distinct characters to a
long-lived matcher can grow its memory with each search.

Problem types
-------------
- CWE-770 Allocation of Resources Without Limits or Throttling

Solutions
---------
Upgrade to Algorithm-UrataniTakeda 0.1.7 or later.

References
----------
https://github.com/robrwo/perl-Algorithm-UrataniTakeda/security/advisories/GHSA-9vcx-647w-pr3h
https://metacpan.org/release/RRWO/Algorithm-UrataniTakeda-v0.1.7/changes
https://github.com/robrwo/perl-Algorithm-UrataniTakeda/commit/79897ef86a5a9bb6bc381718fe977c8150bc3d5b.patch

