X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/18/9
Message-Id: <F78CD654-B1BC-49CD-BA1A-30F639DE678D@stig.io>
Date: Fri, 18 Sep 2026 16:00:22 +0200
From: Stig Palmquist <stig@...g.io>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-93019: Imager versions before 1.036 for Perl exit the process reading a TGA with a colour map length of 32768 or more in tga_palette_read 
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-93019                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-93019

  Distribution:  Imager
      Versions:  before 1.036
      MetaCPAN:  https://metacpan.org/dist/Imager
      VCS Repo:  https://github.com/tonycoz/imager


Imager versions before 1.036 for Perl exit the process reading a TGA
with a colour map length of 32768 or more in tga_palette_read

Description
-----------
Imager versions before 1.036 for Perl exit the process reading a TGA
with a colour map length of 32768 or more in tga_palette_read.

The reader unpacks the two-byte colour map length into a signed short,
so a length of 32768 or more becomes negative. tga_palette_read() casts
that value to size_t and asks mymalloc() for a size near SIZE_MAX. The
allocation fails and Imager's allocator calls exit(3).

Reading an attacker-supplied file through Imager->read() triggers an
uncatchable exit.

Problem types
-------------
- CWE-196 Unsigned to Signed Conversion Error
- CWE-789 Memory Allocation with Excessive Size Value

Solutions
---------
Upgrade to Imager 1.036 or later.

References
----------
https://github.com/tonycoz/imager/security/advisories/GHSA-p4vw-rc54-p2c2
https://github.com/tonycoz/imager/commit/74ed50e0625f9f51054e595bb4a8da92c1e0d571.patch
https://metacpan.org/release/TONYC/Imager-1.036/changes

Timeline
--------
- 2026-09-18: Version 1.036 released with fix.

Credits
-------
router0mail, finder


