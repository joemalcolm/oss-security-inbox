X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/22/11
Message-ID: <arI0XIOmDsPym_bP@pjcj.com>
Date: Tue, 22 Sep 2026 09:57:19 +0200
From: Paul Johnson <paul@...j.net>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-74765: Net::IDN::Punycode versions before 2.590 for Perl allow an out-of-bounds read via integer overflow of the delta accumulator in encode_punycode
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-74765                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-74765

  Distribution:  Net-IDN-Encode
      Versions:  before 2.590
      MetaCPAN:  https://metacpan.org/dist/Net-IDN-Encode
      VCS Repo:  https://github.com/robrwo/Net-IDN-Encode


Net::IDN::Punycode versions before 2.590 for Perl allow an
out-of-bounds read via integer overflow of the delta accumulator in
encode_punycode

Description
-----------
Net::IDN::Punycode versions before 2.590 for Perl allow an
out-of-bounds read via integer overflow of the delta accumulator in
encode_punycode.

The XS backend keeps the punycode delta, and the digit index derived
from it, in a signed int. The accumulation `delta += (m-n) * (h+1)` has
no overflow check, so a large enough code point wraps the delta and the
digit index leaves the range of the 36-entry digit table. The bound
before the final table access tests only for an index above 36, so a
negative index passes it, as does 36 itself. Perl strings hold code
points beyond the Unicode range, and one such code point overflows the
accumulation on its own. Valid input wraps it as well, for example 1927
ASCII letters followed by U+10FFFF. The conversion functions encode a
label before they check its length, so a long label reaches the encoder
through the documented API.

Only the XS backend is affected.

Encoding an attacker-supplied string copies a byte from outside the
digit table into the encoded result or crashes the process.

Problem types
-------------
- CWE-190 Integer Overflow or Wraparound
- CWE-125 Out-of-bounds Read

Solutions
---------
Upgrade to Net-IDN-Encode 2.590-TRIAL or later.

References
----------
https://metacpan.org/release/PJCJ/Net-IDN-Encode-2.590-TRIAL/changes
https://github.com/robrwo/Net-IDN-Encode/commit/27a91ccdb6c9b41f75ba198f5ae154d14e225de2.patch
https://github.com/robrwo/Net-IDN-Encode/commit/81c7f99fe7430bdc5116081508dffdb56f376861.patch
https://github.com/robrwo/Net-IDN-Encode/commit/89d5aa8d3504c5e96061ab76d1541a89c16157cf.patch
https://datatracker.ietf.org/doc/html/rfc3492#section-6.4

-- 
Paul Johnson - paul@...j.net
