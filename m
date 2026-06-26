X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/26/5
Message-ID: <98d7f9bf-e29c-426b-a401-028eb4b215fa@cpansec.org>
Date: Fri, 26 Jun 2026 09:08:59 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-11625: Bytes::Random::Secure versions through 0.29 for Perl share internal state across forked processes
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-11625                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-11625
   Distribution:  Bytes-Random-Secure
       Versions:  through 0.29

       MetaCPAN:  https://metacpan.org/dist/Bytes-Random-Secure
       VCS Repo:  https://github.com/daoswald/Bytes-Random-Secure


Bytes::Random::Secure versions through 0.29 for Perl share internal
state across forked processes

Description
-----------
Bytes::Random::Secure versions through 0.29 for Perl share internal
state across forked processes.

When an object is initialised before forking, or when the functional
interface is used, then the internal state for the PRNG is shared
across processes and identical random streams will be produced.

Secrets generated in multiprocess applications are predictable across
processes.

Problem types
-------------
- CWE-335 Incorrect Usage of Seeds in Pseudo-Random Number Generator
   (PRNG)

Workarounds
-----------
Apply the patch.

Otherwise, only use the object-oriented interface and ensure that the
object is only instantiated in a child process after forking.

Alternatively, use a different module such as Crypt::PRNG,
Crypt::SysRandom or Crypt::URandom.


References
----------
https://github.com/daoswald/Bytes-Random-Secure/issues/3
https://github.com/daoswald/Bytes-Random-Secure/pull/4
https://security.metacpan.org/patches/B/Bytes-Random-Secure/0.29/CVE-2026-11625-r1.patch
https://www.cve.org/CVERecord?id=CVE-2026-41564

Timeline
--------
- 2026-06-24: Issue publicly reported on GitHub



