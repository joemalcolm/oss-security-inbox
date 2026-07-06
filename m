X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/06/4
Message-Id: <2094351C-3BAE-41DF-8E5B-5608D1D64938@stig.io>
Date: Mon, 6 Jul 2026 14:07:01 +0200
From: Stig Palmquist <stig@...g.io>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-13708: Imager::File::JPEG versions before 1.003 for Perl leak heap memory when reading a JPEG with repeated APP13 markers in i_readjpeg_wiol
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-13708                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-13708
  Distribution:  Imager-File-JPEG
      Versions:  before 1.003

      MetaCPAN:  https://metacpan.org/dist/Imager-File-JPEG
      VCS Repo:  https://github.com/tonycoz/imager


Imager::File::JPEG versions before 1.003 for Perl leak heap memory when
reading a JPEG with repeated APP13 markers in i_readjpeg_wiol

Description
-----------
Imager::File::JPEG versions before 1.003 for Perl leak heap memory when
reading a JPEG with repeated APP13 markers in i_readjpeg_wiol.

i_readjpeg_wiol walks the marker list libjpeg returns and, for each
APP13 marker, allocates a new buffer with *iptc_itext = mymalloc(...)
and overwrites the previous pointer without freeing it. Only the final
payload is later turned into a Perl scalar and freed, so a JPEG with N
such markers leaks the first N-1 payloads on every read.

In a long-lived process, such as an upload or thumbnailing service,
repeated reads accumulate these leaks and exhaust available memory, a
denial of service.

The same handler ships bundled in the Imager distribution, where
versions before 1.032 are affected and the fix ships in 1.032.

Problem types
-------------
- CWE-401 Missing Release of Memory after Effective Lifetime

Solutions
---------
Upgrade to Imager::File::JPEG 1.003 or later, or to Imager 1.032 or
later if the bundled copy is in use.


References
----------
https://github.com/tonycoz/imager/commit/9f1c485ca3ee15dc261549e11afb356866552c3a.patch
https://metacpan.org/release/TONYC/Imager-File-JPEG-1.003/source/Changes

Timeline
--------
- 2026-07-01: Version 1.003 released with fix.


