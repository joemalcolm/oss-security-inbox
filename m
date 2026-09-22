X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/22/15
Message-ID: <arI2xClSRvWp_jgl@pjcj.com>
Date: Tue, 22 Sep 2026 10:06:48 +0200
From: Paul Johnson <paul@...j.net>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-87080: Net::IDN::Punycode::PP versions before 2.590 for Perl decode a truncated label to a name containing a character it never encoded in decode_punycode
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-87080                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-87080

  Distribution:  Net-IDN-Encode
      Versions:  before 2.590
      MetaCPAN:  https://metacpan.org/dist/Net-IDN-Encode
      VCS Repo:  https://github.com/robrwo/Net-IDN-Encode


Net::IDN::Punycode::PP versions before 2.590 for Perl decode a
truncated label to a name containing a character it never encoded in
decode_punycode

Description
-----------
Net::IDN::Punycode::PP versions before 2.590 for Perl decode a
truncated label to a name containing a character it never encoded in
decode_punycode.

The pure-Perl decoder reads one digit at a time with four-argument
substr and tests the result with defined to detect the end of the
input. substr on an exhausted string returns the empty string rather
than undef, so decoding continues past the end. The empty string
converts to a digit value below the range, reducing the accumulator,
and the decoder derives one extra code point and its position from it.
The result is deterministic. The XS backend rejects the same label.

Net::IDN::Punycode uses this backend wherever the XS does not build.

The two backends disagree about what such a label means, so a sender
can pick a label that one installation resolves to a name and another
rejects.

Problem types
-------------
- CWE-1286 Improper Validation of Syntactic Correctness of Input

Solutions
---------
Upgrade to Net-IDN-Encode 2.590-TRIAL or later.

References
----------
https://metacpan.org/release/PJCJ/Net-IDN-Encode-2.590-TRIAL/changes
https://github.com/robrwo/Net-IDN-Encode/commit/48436c7ad2c4d4c6398110e11133754fc476a783.patch

-- 
Paul Johnson - paul@...j.net
