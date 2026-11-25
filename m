X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/25/1
Message-ID: <5c32955c-acba-49b4-9637-c2159e446262@cpansec.org>
Date: Wed, 25 Nov 2026 00:32:53 +0000
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-122093: Strong::Random versions through 0.96 for Perl allow every later rand output to be predicted from three earlier ones
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-122093                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-122093

   Distribution:  Strong-Random
       Versions:  through 0.96
       MetaCPAN:  https://metacpan.org/dist/Strong-Random


Strong::Random versions through 0.96 for Perl allow every later rand
output to be predicted from three earlier ones

Description
-----------
Strong::Random versions through 0.96 for Perl allow every later rand
output to be predicted from three earlier ones.

The generator keeps its state in a single number. Each call multiplies
the state by a factor derived from it, and the returned digits encode
that factor, so three consecutive outputs determine the state however
the generator was seeded. Outputs are also biased: the first digit
after the decimal point is never zero, so rand(256) never returns 1 to
24.

An attacker who sees three consecutive outputs can predict the tokens,
passwords or key bytes that the same object later issues to other
users.

Problem types
-------------
- CWE-327 Use of a Broken or Risky Cryptographic Algorithm

Workarounds
-----------
Replace Strong::Random with a cryptographically secure source such as
Crypt::URandom or Crypt::SysRandom.

References
----------
https://metacpan.org/release/TRUNAEV/Strong-Random-0.96/source/lib/Strong/Random.pm

