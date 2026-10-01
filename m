X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/01/10
Message-Id: <57C12FD3-85FE-4901-9D24-30ADAF352BC9@stig.io>
Date: Thu, 1 Oct 2026 15:13:34 +0200
From: Stig Palmquist <stig@...g.io>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-102505: Imager versions before 1.037 for Perl overflow a heap buffer fetching float samples from a paletted image in i_gsampf_fp
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-102505                                      CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-102505

  Distribution:  Imager
      Versions:  before 1.037
      MetaCPAN:  https://metacpan.org/dist/Imager
      VCS Repo:  https://github.com/tonycoz/imager


Imager versions before 1.037 for Perl overflow a heap buffer fetching
float samples from a paletted image in i_gsampf_fp

Description
-----------
Imager versions before 1.037 for Perl overflow a heap buffer fetching
float samples from a paletted image in i_gsampf_fp.

For a paletted image, getsamples() with type "float" allocates a buffer
of one sample per pixel and fetches every requested channel of each
pixel into it. Requesting more than one channel writes past its end.

An attacker-supplied image controls the overflowing bytes through its
palette.

Problem types
-------------
- CWE-131 Incorrect Calculation of Buffer Size

Solutions
---------
Upgrade to Imager 1.037 or later.

References
----------
https://github.com/tonycoz/imager/security/advisories/GHSA-4rx6-cgv3-fmxp
https://github.com/tonycoz/imager/commit/aae49c6be065aa467e834105c816359394a634db.patch
https://metacpan.org/release/TONYC/Imager-1.037/changes

Timeline
--------
- 2026-09-30: Version 1.037 released with fix.


