X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/18/6
Message-ID: <0642a5c4-b890-46a6-bed1-8e0ee95e5bfc@cpansec.org>
Date: Thu, 18 Jun 2026 18:54:16 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-9692: Mojolicious::Sessions::Storable versions through 0.05 for Perl generate session ids insecurely
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-9692                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-9692
   Distribution:  Mojolicious-Plugin-SessionStore
       Versions:  through 0.05

       MetaCPAN: https://metacpan.org/dist/Mojolicious-Plugin-SessionStore
       VCS Repo: https://github.com/hayajo/Mojolicious-Plugin-SessionStore


Mojolicious::Sessions::Storable versions through 0.05 for Perl generate
session ids insecurely

Description
-----------
Mojolicious::Sessions::Storable versions through 0.05 for Perl generate
session ids insecurely.

The default session id generator returns a SHA-1 hash seeded with the
built-in rand function, the epoch time, the heap address of an
anonymous hash, and the PID.

These are predictable or low-entropy sources that are unsuitable for
security purposes.

Problem types
-------------
- CWE-340 Generation of Predictable Numbers or Identifiers
- CWE-338 Use of Cryptographically Weak Pseudo-Random Number Generator

Workarounds
-----------
Apply the patch, which requires an upgrade to Mojolicious 9.46 or
later.


References
----------
https://security.metacpan.org/patches/M/Mojolicious-Plugin-SessionStore/0.05/CVE-2026-9692-r1.patch
https://metacpan.org/release/HAYAJO/Mojolicious-Plugin-SessionStore-0.05/source/lib/Mojolicious/Sessions/Storable.pm#L11-15
https://www.cve.org/CVERecord?id=CVE-2025-40923
https://security.metacpan.org/docs/guides/random-data-for-security.html



