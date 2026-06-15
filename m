X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/15/11
Message-ID: <6853032f-c3a1-418a-8de7-d4b5829f7a5b@cpansec.org>
Date: Mon, 15 Jun 2026 22:22:43 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-11832: Dancer2::Plugin::Auth::OAuth versions before 0.22 for Perl default to a predictable nonce
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-11832                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-11832
   Distribution:  Dancer2-Plugin-Auth-OAuth
       Versions:  before 0.22

       MetaCPAN: https://metacpan.org/dist/Dancer2-Plugin-Auth-OAuth
       VCS Repo: https://github.com/biafra/perl-Dancer2-Plugin-Auth-OAuth


Dancer2::Plugin::Auth::OAuth versions before 0.22 for Perl default to a
predictable nonce

Description
-----------
Dancer2::Plugin::Auth::OAuth versions before 0.22 for Perl default to a
predictable nonce.

The default nonce was generated using an MD5 hash of the epoch time,
which is predictable.

Problem types
-------------
- CWE-338 Use of Cryptographically Weak Pseudo-Random Number Generator
   (PRNG)

Solutions
---------
Upgrade to version 0.22 or later.


References
----------
https://metacpan.org/release/BIAFRA/Dancer2-Plugin-Auth-OAuth-0.22/changes
https://www.cve.org/CVERecord?id=CVE-2025-22376
https://datatracker.ietf.org/doc/html/rfc5849#section-3.3
https://datatracker.ietf.org/doc/html/rfc5849#section-4.9



