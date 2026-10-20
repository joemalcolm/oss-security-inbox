X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/21/1
Message-Id: <741EC44D-43E7-40F6-98C9-FA956E31FD22@stig.io>
Date: Wed, 21 Oct 2026 00:39:38 +0200
From: Stig Palmquist <stig@...g.io>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-112202: Imager::File::GIF versions before 1.006 for Perl allow out-of-bounds reads when consolidating GIF images
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-112202                                      CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-112202

  Distribution:  Imager-File-GIF
      Versions:  before 1.006
      MetaCPAN:  https://metacpan.org/dist/Imager-File-GIF
      VCS Repo:  https://github.com/tonycoz/imager

  Distribution:  Imager
      Versions:  before 1.040
      MetaCPAN:  https://metacpan.org/dist/Imager
      VCS Repo:  https://github.com/tonycoz/imager


Imager::File::GIF versions before 1.006 for Perl allow out-of-bounds
reads when consolidating GIF images

Description
-----------
Imager::File::GIF versions before 1.006 for Perl allow out-of-bounds
reads when consolidating GIF images.

With `gif_consolidate => 1`, palette indices from the image are used
without checking the colour table's bounds. The i_readgif_low routine
reads beyond the heap allocation and copies the bytes into output
pixels. The default GIF reader is not affected.

The same code ships bundled in the Imager distribution.

An attacker supplying a crafted GIF can disclose adjacent heap memory
through the decoded output and may crash the process.

Problem types
-------------
- CWE-125 Out-of-bounds Read

Workarounds
-----------
Disable the gif_consolidate read option when processing untrusted GIF
images.

Solutions
---------
Upgrade to Imager-File-GIF 1.006 or later, or to Imager 1.040 or later
if the bundled copy is in use.

References
----------
https://github.com/tonycoz/imager/commit/dec96f12b3d8a7fd94e86264953a5e4919dd6036.patch
https://metacpan.org/release/TONYC/Imager-File-GIF-1.006/changes
https://metacpan.org/release/TONYC/Imager-1.040/changes
https://github.com/tonycoz/imager/security/advisories/GHSA-v4hp-5h6w-9897

Credits
-------
kumar-Prakash07, reporter


