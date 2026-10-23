X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/23/31
Message-ID: <8e918b74ab86486a3ec0048cc5bea123@cpansec.org>
Date: Fri, 23 Oct 2026 19:26:04 -0300
From: Timothy Legge <timlegge@...nsec.org>
To: Cve Announce <cve-announce@...urity.metacpan.org>, Oss Security <oss-security@...ts.openwall.com>
Subject: CVE-2026-115936: IO::Compress::Brotli versions from 0.004001 before 0.023 for Perl bundle a brotli library with an out-of-bounds write in the decoder
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-115936                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-115936

   Distribution:  IO-Compress-Brotli
       Versions:  from 0.004001 before 0.023
       MetaCPAN:  https://metacpan.org/dist/IO-Compress-Brotli
       VCS Repo:  https://github.com/timlegge/perl-IO-Compress-Brotli


IO::Compress::Brotli versions from 0.004001 before 0.023 for Perl
bundle a brotli library with an out-of-bounds write in the decoder

Description
-----------
IO::Compress::Brotli versions from 0.004001 before 0.023 for Perl
bundle a brotli library with an out-of-bounds write in the decoder.

Affected versions compile a bundled brotli into the module rather than
linking to the system library. The bundled copy, 1.0.4 through 1.2.0
across the range, carries the decoder out-of-bounds write described in
CVE-2026-111497. Version 0.023 updates it to brotli 1.2.1.

Any caller that decompresses untrusted data with unbro or the
decompress method reaches the bundled decoder. An attacker supplying a
crafted brotli stream can corrupt decoder state, disclose memory, crash
the process, or potentially execute arbitrary code. Upgrading the
system brotli does not remediate this.

Problem types
-------------
- CWE-1395 Dependency on Vulnerable Third-Party Component

Solutions
---------
Upgrade to IO-Compress-Brotli 0.023 or later.

References
----------
https://github.com/timlegge/perl-IO-Compress-Brotli/commit/39a62a44545810a60ff9e43713f8fd8fb95fc916.patch
https://www.cve.org/CVERecord?id=CVE-2026-111497
https://github.com/google/brotli/releases/tag/v1.2.1
https://metacpan.org/release/TIMLEGGE/IO-Compress-Brotli-0.023/changes

Timeline
--------
- 2026-10-23: Version 0.023 released with fix.
