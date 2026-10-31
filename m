X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/01/1
Message-ID: <d1d64c1836b0c3a933e308d494b3b42b@cpansec.org>
Date: Sat, 31 Oct 2026 20:54:20 -0300
From: Timothy Legge <timlegge@...nsec.org>
To: Cve Announce <cve-announce@...urity.metacpan.org>, Oss Security <oss-security@...ts.openwall.com>
Subject: CVE-2026-115946: XS::ibbrotli versions before 1.2.1.0 for Perl bundle a brotli library with an out-of-bounds write in the decoder
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-115946                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-115946

   Distribution:  XS-libbrotli
       Versions:  before 1.2.1.0
       MetaCPAN:  https://metacpan.org/dist/XS-libbrotli


XS::libbrotli versions before 1.2.1.0 for Perl bundle a brotli library
with an out-of-bounds write in the decoder

Description
-----------
XS::libbrotli versions before 1.2.1.0 for Perl bundle a brotli library
with an out-of-bounds write in the decoder.

Affected versions compile a bundled brotli into static archives that
dependent XS modules link against at build time, rather than using the
system library. The bundled copy, 1.0.7 or 1.1.0 across the range,
carries the decoder out-of-bounds write described in CVE-2026-111497.
Version 1.2.1.0 updates it to brotli 1.2.1.

XS::libbrotli has no Perl interface, so the decoder is reached through
any dependent module that decompresses untrusted data with it. An
attacker supplying a crafted brotli stream can corrupt decoder state,
disclose memory, crash the process, or potentially execute arbitrary
code. Upgrading the system brotli does not remediate this.

Problem types
-------------
- CWE-1395 Dependency on Vulnerable Third-Party Component

Solutions
---------
Upgrade to XS-libbrotli 1.2.1.0 or later and reinstall every XS module
built against it.

References
----------
https://www.cve.org/CVERecord?id=CVE-2026-111497
https://github.com/google/brotli/releases/tag/v1.2.1
https://metacpan.org/release/SYBER/XS-libbrotli-1.2.1.0/changes

Timeline
--------
- 2026-10-29: Version 1.2.1.0 released with fix.
