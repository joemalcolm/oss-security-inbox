X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/21/30
Message-ID: <6b6df831-5635-4683-a75a-30f524675e13@cpansec.org>
Date: Wed, 21 Oct 2026 22:38:54 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-112921: Robots::Validate versions from 0.4.3 before 0.4.10 for Perl report clients as imposter robots when User-Agent matcher state carries over from a previous request
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-112921                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-112921

   Distribution:  Robots-Validate
       Versions:  from 0.4.3 before 0.4.10
       MetaCPAN: https://metacpan.org/dist/Robots-Validate
       VCS Repo: https://github.com/robrwo/Robots-Validate


Robots::Validate versions from 0.4.3 before 0.4.10 for Perl report
clients as imposter robots when User-Agent matcher state carries over
from a previous request

Description
-----------
Robots::Validate versions from 0.4.3 before 0.4.10 for Perl report
clients as imposter robots when User-Agent matcher state carries over
from a previous request.

Each Robots::Validate object holds one pure-Perl Aho-Corasick search
machine and feeds every User-Agent into it without resetting its state.
A User-Agent that ends part-way through a robot name leaves the machine
mid-match, so the next User-Agent checked by the same object can
complete that name. That client's address is then checked against the
robot's DNS rule, which it fails.

A remote client can use this to make a site that blocks bad robots
block other visitors where the prefix User-Agent string is a suffix of
a robot being validated.

Note that deployments with Algorithm::AhoCorasick::XS are also
affected, since it was unused due to a different bug.

Problem types
-------------
- CWE-488 Exposure of Data Element to Wrong Session

Solutions
---------
Upgrade to Robots-Validate v0.4.10 or later.

Deployments with Algorithm::AhoCorasick::XS should upgrade to v0.4.11,
which fixed a bug with using that version.

References
----------
https://github.com/robrwo/Robots-Validate/commit/776a1456e6605492b7582ed25d3d5006ef384402.patch
https://metacpan.org/release/RRWO/Robots-Validate-v0.4.10/changes
https://metacpan.org/release/RRWO/Robots-Validate-v0.4.11/changes

