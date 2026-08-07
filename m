X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/07/6
Message-Id: <F4245F93-FEC5-43EA-9524-AAE2C7235493@stig.io>
Date: Fri, 7 Aug 2026 19:59:15 +0200
From: Stig Palmquist <stig@...g.io>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-19082: Imager versions from 0.45_02 before 1.034 for Perl may expose adjacent heap bytes via strlen() over-read from zero-count ASCII EXIF entries in copy_string_tags
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-19082                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-19082
  Distribution:  Imager
      Versions:  from 0.45_02 before 1.034

      MetaCPAN:  https://metacpan.org/dist/Imager
      VCS Repo:  https://github.com/tonycoz/imager


Imager versions from 0.45_02 before 1.034 for Perl may expose adjacent
heap bytes via strlen() over-read from zero-count ASCII EXIF entries in
copy_string_tags

Description
-----------
Imager versions from 0.45_02 before 1.034 for Perl may expose adjacent
heap bytes via strlen() over-read from zero-count ASCII EXIF entries in
copy_string_tags.

copy_string_tags() computes an ASCII EXIF tag's length as `entry->size
- 1` to strip the trailing NUL. A zero-count ASCII entry sets
`entry->size` to 0, and the derived length reaches i_tags_add() as -1,
which is interpreted as a request to call strlen(), scanning past the
entry to the next NUL and copying those bytes into the tag. JPEG
reaches this path via im_decode_exif(), as does the separate
Imager::File::WEBP distribution, which is fixed by upgrading Imager.

Any caller of Imager->read() on an attacker-supplied image with such an
entry may receive an exif_* tag holding adjacent heap bytes instead of
an empty string.

Problem types
-------------
- CWE-125 Out-of-bounds Read

Solutions
---------
Upgrade to Imager 1.034 or later.


References
----------
https://github.com/tonycoz/imager/security/advisories/GHSA-hx46-55wp-hv6m
https://github.com/tonycoz/imager/commit/24bde0427a113264d53f45a9c29ae756d84c82fe.patch
https://metacpan.org/release/TONYC/Imager-1.034/changes

Timeline
--------
- 2026-08-07: Version 1.034 released with fix.

Credits
-------
Arpit Jain (arpitjain099), finder


