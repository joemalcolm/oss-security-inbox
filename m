X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/06/3
Message-Id: <5BC1F2D4-B95C-46C1-BFAE-875A41F43870@stig.io>
Date: Mon, 6 Jul 2026 14:05:35 +0200
From: Stig Palmquist <stig@...g.io>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-13705: Imager versions before 1.032 for Perl have a heap out-of-bounds read in the bundled Imager::File::SGI reader via a 16-bit RLE literal run in read_rgb_16_rle
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-13705                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-13705
  Distribution:  Imager
      Versions:  before 1.032

      MetaCPAN:  https://metacpan.org/dist/Imager
      VCS Repo:  https://github.com/tonycoz/imager


Imager versions before 1.032 for Perl have a heap out-of-bounds read in
the bundled Imager::File::SGI reader via a 16-bit RLE literal run in
read_rgb_16_rle

Description
-----------
Imager versions before 1.032 for Perl have a heap out-of-bounds read in
the bundled Imager::File::SGI reader via a 16-bit RLE literal run in
read_rgb_16_rle.

read_rgb_16_rle guards each literal run with if (count > data_left),
but count is a pixel count while every 16-bit sample consumes two
bytes. The copy loop reads inp[0] * 256 + inp[1] and advances two bytes
per pixel, so a run with data_left / 2 < count <= data_left passes the
guard yet consumes 2 * count bytes and reads past the end of the
buffer. The 8-bit path is unaffected because there one pixel is one
byte.

Reading a crafted SGI image through Imager->read triggers the over-read
before the parser rejects the malformed image, which can crash the
process.

Problem types
-------------
- CWE-125 Out-of-bounds Read

Solutions
---------
Upgrade to Imager 1.032 or later.


References
----------
https://github.com/tonycoz/imager/commit/f28de02770dfc26ffbdc32048970ed84babbf730.patch
https://metacpan.org/release/TONYC/Imager-1.032/source/Changes

Timeline
--------
- 2026-07-01: Version 1.032 released with fix.


