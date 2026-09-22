X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/22/12
Message-ID: <arI1QVR6ttK0F177@pjcj.com>
Date: Tue, 22 Sep 2026 10:01:44 +0200
From: Paul Johnson <paul@...j.net>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-74766: Net::IDN::Punycode versions from 2.301 before 2.590 for Perl allow a heap use-after-free via a decoded code point that reallocates the output buffer in decode_punycode
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-74766                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-74766

  Distribution:  Net-IDN-Encode
      Versions:  from 2.301 before 2.590
      MetaCPAN:  https://metacpan.org/dist/Net-IDN-Encode
      VCS Repo:  https://github.com/robrwo/Net-IDN-Encode


Net::IDN::Punycode versions from 2.301 before 2.590 for Perl allow a
heap use-after-free via a decoded code point that reallocates the
output buffer in decode_punycode

Description
-----------
Net::IDN::Punycode versions from 2.301 before 2.590 for Perl allow a
heap use-after-free via a decoded code point that reallocates the
output buffer in decode_punycode.

The XS backend inserts each decoded code point into the string buffer
of the scalar it returns. decode_punycode computes the insertion
pointer first and only then grows the buffer when the code point does
not fit. The growth reallocates the buffer and updates every pointer
except the insertion pointer, so the move that follows and the write of
the code point go through a freed pointer. The buffer starts at twice
the label length, and a code point above U+FFFF takes four bytes in the
output, so a label of such code points outgrows it and forces the
reallocation.

Version 2.301, the fix for CVE-2016-15059, introduced the defect. Only
the XS backend is affected.

Decoding an attacker-supplied punycode label reads and writes freed
heap memory.

Problem types
-------------
- CWE-416 Use After Free

Solutions
---------
Upgrade to Net-IDN-Encode 2.590-TRIAL or later.

References
----------
https://metacpan.org/release/PJCJ/Net-IDN-Encode-2.590-TRIAL/changes
https://github.com/robrwo/Net-IDN-Encode/commit/259e74c5739175b063c5393a4ce4a0705678ba61.patch
https://github.com/robrwo/Net-IDN-Encode/commit/2fbc71e4d8517ab65c5d5d35fda086371b735a3f.patch
https://www.cve.org/CVERecord?id=CVE-2016-15059

Timeline
--------
- 2016-12-03: Version 2.301 released, introducing the defect.
- 2026-09-17: Version 2.590-TRIAL released with fix.

-- 
Paul Johnson - paul@...j.net
