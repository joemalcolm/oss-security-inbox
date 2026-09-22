X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/22/14
Message-ID: <arI2VQbUs_bhPca4@pjcj.com>
Date: Tue, 22 Sep 2026 10:05:20 +0200
From: Paul Johnson <paul@...j.net>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-87079: Net::IDN::Punycode versions before 2.590 for Perl allow CPU exhaustion via quadratic insertion cost when decoding a long label in decode_punycode
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-87079                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-87079

  Distribution:  Net-IDN-Encode
      Versions:  before 2.590
      MetaCPAN:  https://metacpan.org/dist/Net-IDN-Encode
      VCS Repo:  https://github.com/robrwo/Net-IDN-Encode


Net::IDN::Punycode versions before 2.590 for Perl allow CPU exhaustion
via quadratic insertion cost when decoding a long label in
decode_punycode

Description
-----------
Net::IDN::Punycode versions before 2.590 for Perl allow CPU exhaustion
via quadratic insertion cost when decoding a long label in
decode_punycode.

The XS backend inserts each decoded code point into a UTF-8 buffer and
finds the insertion point by scanning that buffer from the start, one
character at a time. The scan runs once per code point over the output
built so far, so the cost is quadratic in the label length. The
pure-Perl backend downgrades its input to bytes so that substr can
index it directly, but takes its working copy before the downgrade, so
when the input carries the UTF-8 flag every substr on the copy scans
from the start, with the same quadratic cost.

Nothing bounds the label length in the to-Unicode direction. The
63-byte DNS limit is checked only when converting to ASCII, so
domain_to_unicode and uts46_to_unicode pass an attacker-supplied label
of any length to the decoder.

Problem types
-------------
- CWE-407 Inefficient Algorithmic Complexity

Solutions
---------
Upgrade to Net-IDN-Encode 2.590-TRIAL or later.

References
----------
https://metacpan.org/release/PJCJ/Net-IDN-Encode-2.590-TRIAL/changes
https://github.com/robrwo/Net-IDN-Encode/commit/00d723423b66810af26b88c552bedc61975b3078.patch
https://github.com/robrwo/Net-IDN-Encode/commit/447c6b38ef5d4570329fa4f78690f4e14e09ba0c.patch

-- 
Paul Johnson - paul@...j.net
