X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/01/9
Message-Id: <830C4C9C-D11E-40D0-A516-D259E6DD2746@stig.io>
Date: Thu, 1 Oct 2026 15:12:54 +0200
From: Stig Palmquist <stig@...g.io>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-102504: Imager versions before 1.037 for Perl exit the process reading a raw image with an out-of-range raw_datachannels value in i_readraw_wiol
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-102504                                      CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-102504

  Distribution:  Imager
      Versions:  before 1.037
      MetaCPAN:  https://metacpan.org/dist/Imager
      VCS Repo:  https://github.com/tonycoz/imager


Imager versions before 1.037 for Perl exit the process reading a raw
image with an out-of-range raw_datachannels value in i_readraw_wiol

Description
-----------
Imager versions before 1.037 for Perl exit the process reading a raw
image with an out-of-range raw_datachannels value in i_readraw_wiol.

Nothing range-checks raw_datachannels. The line buffer is sized as the
image width times the channel count with no overflow check, so a
negative or very large count requests an excessive allocation. When it
fails, Imager's allocator calls exit(3).

Passing an untrusted raw_datachannels value to Imager->read() triggers
an uncatchable exit.

Problem types
-------------
- CWE-789 Memory Allocation with Excessive Size Value
- CWE-190 Integer Overflow or Wraparound

Solutions
---------
Upgrade to Imager 1.037 or later.

References
----------
https://github.com/tonycoz/imager/security/advisories/GHSA-g549-r73g-x7x6
https://github.com/tonycoz/imager/commit/21b0df9eef1dffe1fdcd3706bfea9f1338031679.patch
https://metacpan.org/release/TONYC/Imager-1.037/changes

Timeline
--------
- 2026-09-30: Version 1.037 released with fix.

Credits
-------
ahanwate, finder


