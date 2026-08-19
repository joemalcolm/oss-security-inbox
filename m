X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/19/3
Message-ID: <517e44be-1ae8-46af-b0f1-f07ea04a1053@cpansec.org>
Date: Wed, 19 Aug 2026 08:24:06 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-75589: Net::OAuth versions before 0.33 for Perl check HMAC-SHA1, HMAC-SHA256 and PLAINTEXT signatures with a non-constant-time comparison in verify
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-75589                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-75589
   Distribution:  Net-OAuth
       Versions:  before 0.33

       MetaCPAN:  https://metacpan.org/dist/Net-OAuth
       VCS Repo:  https://github.com/vurtdev/Net-OAuth


Net::OAuth versions before 0.33 for Perl check HMAC-SHA1, HMAC-SHA256
and PLAINTEXT signatures with a non-constant-time comparison in verify

Description
-----------
Net::OAuth versions before 0.33 for Perl check HMAC-SHA1, HMAC-SHA256
and PLAINTEXT signatures with a non-constant-time comparison in verify.

Each of the three compares the signature carried in the message against
the locally computed one with the eq operator, which returns as soon as
the two strings differ. The time taken to reject a signature varies
with the length of the matching prefix. RSA-SHA1 is not affected, as it
verifies through the RSA key object rather than by comparing strings.

A client that can submit messages and time the replies may recover a
valid signature one byte at a time rather than searching the whole
signature space. Under PLAINTEXT the value compared against is the
signature key itself, so the search recovers consumer_secret and
token_secret.

Problem types
-------------
- CWE-208 Observable Timing Discrepancy

Solutions
---------
Upgrade to Net-OAuth 0.33 or later.

References
----------
https://github.com/vurtdev/Net-OAuth/security/advisories/GHSA-g8xr-69p3-gw56
https://github.com/vurtdev/Net-OAuth/commit/a1a16b58add85668ef4fcda642a486ceed098eba.patch
https://metacpan.org/release/RRWO/Net-OAuth-0.33/changes



