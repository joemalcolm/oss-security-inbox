X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/18/8
Message-Id: <5CB5CA35-3EB5-4532-8E0D-8A9BC52EFC85@stig.io>
Date: Fri, 18 Sep 2026 16:02:58 +0200
From: Stig Palmquist <stig@...g.io>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-93018: Imager versions before 1.036 for Perl disclose uninitialised heap memory reading a paletted image with pixel indexes past its colour map in i_gpix_p and i_glin_p
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-93018                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-93018

  Distribution:  Imager
      Versions:  before 1.036
      MetaCPAN:  https://metacpan.org/dist/Imager
      VCS Repo:  https://github.com/tonycoz/imager


Imager versions before 1.036 for Perl disclose uninitialised heap
memory reading a paletted image with pixel indexes past its colour map
in i_gpix_p and i_glin_p

Description
-----------
Imager versions before 1.036 for Perl disclose uninitialised heap
memory reading a paletted image with pixel indexes past its colour map
in i_gpix_p and i_glin_p.

The palette is allocated uninitialised, and only the entries a reader
adds count as populated. The TGA reader stores pixel indexes without
checking them against the colour map. i_gpix_p() rejects only an index
greater than the count, so an index equal to it reads the first
unpopulated entry, and getpixel() returns it.

i_glin_p() skips any index at or beyond the count without writing that
pixel to the caller's buffer. The palette-to-RGB conversion reads each
row through an uninitialised buffer, so those pixels of the converted
image hold prior heap contents.

Reading an attacker-supplied image through Imager->read() and then
fetching its pixels or converting it to RGB discloses process heap
memory.

Problem types
-------------
- CWE-908 Use of Uninitialized Resource
- CWE-193 Off-by-one Error

Solutions
---------
Upgrade to Imager 1.036 or later.

References
----------
https://github.com/tonycoz/imager/security/advisories/GHSA-j7v7-cm4g-vrgf
https://github.com/tonycoz/imager/commit/dcf0a52e2732399d42ab44d98af6934658d068ee.patch
https://metacpan.org/release/TONYC/Imager-1.036/changes

Timeline
--------
- 2026-09-18: Version 1.036 released with fix.

Credits
-------
router0mail, finder


