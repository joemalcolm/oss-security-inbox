X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/17/5
Message-Id: <E1D899BA-25E2-4C7F-A793-3CB236654D51@stig.io>
Date: Thu, 17 Sep 2026 23:27:30 +0200
From: Stig Palmquist <stig@...g.io>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-73638: Imager versions from 0.45_02 before 1.035 for Perl read outside the EXIF block via unchecked start offsets in tiff_load_ifd
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-73638                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-73638

  Distribution:  Imager
      Versions:  from 0.45_02 before 1.035
      MetaCPAN:  https://metacpan.org/dist/Imager
      VCS Repo:  https://github.com/tonycoz/imager


Imager versions from 0.45_02 before 1.035 for Perl read outside the
EXIF block via unchecked start offsets in tiff_load_ifd

Description
-----------
Imager versions from 0.45_02 before 1.035 for Perl read outside the
EXIF block via unchecked start offsets in tiff_load_ifd.

tiff_load_ifd() validates an IFD entry's data by checking that
`entry->offset + entry->size` stays within the EXIF block, and never
checks the start offset itself. Where that sum is not the real end of
the data, the check passes with the entry starting outside the block.

Through 1.032 `entry->offset` is a plain int, so on the usual
two's-complement implementations an offset with the high bit set
converts to negative and the sum can land back inside the block. From
1.033 the field is a size_t and the addition wraps only where size_t is
32 bits. The IFD's own start offset is checked the same way and wraps
where unsigned long is 32 bits, which includes 64-bit Windows.

Any caller of Imager->read() on an attacker-supplied image may receive
EXIF tags holding bytes from outside the block, or crash the process.

Problem types
-------------
- CWE-125 Out-of-bounds Read

Solutions
---------
Upgrade to Imager 1.035 or later.

References
----------
https://github.com/tonycoz/imager/security/advisories/GHSA-j47j-8w8p-3mmc
https://github.com/tonycoz/imager/commit/48ba8ac0749f89466b6e6681fb88cbdb51086ebd.patch
https://github.com/tonycoz/imager/commit/6f1fd003a8e48c7e6e58b7019a04cc71bbfec2c3.patch
https://github.com/tonycoz/imager/issues/568
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=1144226
https://metacpan.org/release/TONYC/Imager-1.035/changes

Timeline
--------
- 2026-08-19: Version 1.035 released with fix.


