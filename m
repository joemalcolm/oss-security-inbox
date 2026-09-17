X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/17/6
Message-Id: <33E818F7-D6CA-4810-83EE-42765E34577C@stig.io>
Date: Thu, 17 Sep 2026 23:25:38 +0200
From: Stig Palmquist <stig@...g.io>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-73639: Imager::File::PNG versions from 1.003 before 1.004 for Perl write past the end of the row buffer reading a PNG with a tRNS transparency chunk in read_direct8
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-73639                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-73639

  Distribution:  Imager-File-PNG
      Versions:  from 1.003 before 1.004
      MetaCPAN:  https://metacpan.org/dist/Imager-File-PNG
      VCS Repo:  https://github.com/tonycoz/imager

  Distribution:  Imager
      Versions:  from 1.034 before 1.035
      MetaCPAN:  https://metacpan.org/dist/Imager
      VCS Repo:  https://github.com/tonycoz/imager


Imager::File::PNG versions from 1.003 before 1.004 for Perl write past
the end of the row buffer reading a PNG with a tRNS transparency chunk
in read_direct8

Description
-----------
Imager::File::PNG versions from 1.003 before 1.004 for Perl write past
the end of the row buffer reading a PNG with a tRNS transparency chunk
in read_direct8.

With a tRNS chunk, read_direct8() adds an alpha channel to the image it
creates but still sizes the row buffer from the original channel count.
libpng expands the transparency into that extra channel, so
png_read_row() fills one channel more than the buffer holds, at one
byte per sample, and writes width bytes past the end of the allocation.
Palette images go to read_paletted() and 16-bit images to
read_direct16(), which sizes its buffer from png_get_rowbytes() and
allocates enough for the expanded row.

The same reader ships bundled in the Imager distribution.

Reading an attacker-supplied PNG through Imager->read() corrupts the
heap, which can crash the process.

Problem types
-------------
- CWE-787 Out-of-bounds Write

Solutions
---------
Upgrade to Imager-File-PNG 1.004 or later, or to Imager 1.035 or later
if the bundled copy is in use.

References
----------
https://github.com/tonycoz/imager/security/advisories/GHSA-jhx5-34j8-9g88
https://github.com/tonycoz/imager/commit/d973bd7e8843f084e8071caa24b89545c88b1e4b.patch
https://github.com/tonycoz/imager/pull/567
https://metacpan.org/release/TONYC/Imager-File-PNG-1.004/changes
https://metacpan.org/release/TONYC/Imager-1.035/changes

Timeline
--------
- 2026-08-19: Imager-File-PNG 1.004 and Imager 1.035 released with fix.

Credits
-------
Alexander Bluhm (bluhm), finder


