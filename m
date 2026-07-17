X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/17/11
Message-ID: <9cf95a36-fa06-4a05-a491-f44de77b17b3@cpansec.org>
Date: Fri, 17 Jul 2026 16:31:19 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-9537: Mojo::JWT versions before 1.02 for Perl verify HMAC signatures with a non-constant-time string comparison
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-9537                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-9537
   Distribution:  Mojo-JWT
       Versions:  before 1.02

       MetaCPAN:  https://metacpan.org/dist/Mojo-JWT
       VCS Repo:  http://github.com/jberger/Mojo-JWT


Mojo::JWT versions before 1.02 for Perl verify HMAC signatures with a
non-constant-time string comparison

Description
-----------
Mojo::JWT versions before 1.02 for Perl verify HMAC signatures with a
non-constant-time string comparison.

The decode() method compares the supplied signature to the recomputed
HMAC with Perl's eq operator, which stops at the first differing byte,
so the comparison time varies with the number of matching leading
bytes.

A caller that decodes attacker supplied tokens leaks the expected
signature through this timing variation, which can be aggregated over
many requests to recover the signature and forge a token.

Problem types
-------------
- CWE-208 Observable Timing Discrepancy

Solutions
---------
Upgrade to Mojo-JWT 1.02, which compares signatures with the
constant-time Mojo::Util::secure_compare.


References
----------
https://github.com/jberger/Mojo-JWT/commit/b8aefb846613e44b5b12bc170898ffd5b05094a2.patch



