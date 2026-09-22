X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/22/16
Message-ID: <arI3HIgrQ0hzqqSX@pjcj.com>
Date: Tue, 22 Sep 2026 10:07:56 +0200
From: Paul Johnson <paul@...j.net>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-87081: Net::IDN::UTS46 versions before 2.590 for Perl allow CPU exhaustion via quadratic punycode encoding of an overlong label before the length check in to_ascii
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-87081                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-87081

  Distribution:  Net-IDN-Encode
      Versions:  before 2.590
      MetaCPAN:  https://metacpan.org/dist/Net-IDN-Encode
      VCS Repo:  https://github.com/robrwo/Net-IDN-Encode


Net::IDN::UTS46 versions before 2.590 for Perl allow CPU exhaustion via
quadratic punycode encoding of an overlong label before the length
check in to_ascii

Description
-----------
Net::IDN::UTS46 versions before 2.590 for Perl allow CPU exhaustion via
quadratic punycode encoding of an overlong label before the length
check in to_ascii.

to_ascii punycode encodes each label and only then applies the 63-byte
DNS limit. encode_punycode in both backends follows the sample
implementation in RFC 3492, whose outer loop runs once per distinct
non-ASCII code point and scans the whole input each round, so a label
of distinct non-ASCII characters costs the square of its length before
the limit rejects it. Every ASCII conversion in the distribution,
including domain_to_ascii and email_to_ascii, goes through to_ascii.

Problem types
-------------
- CWE-407 Inefficient Algorithmic Complexity

Solutions
---------
Upgrade to Net-IDN-Encode 2.590-TRIAL or later.

References
----------
https://metacpan.org/release/PJCJ/Net-IDN-Encode-2.590-TRIAL/changes
https://github.com/robrwo/Net-IDN-Encode/commit/5ac3315131264670efcd3a29857b651506dfee8e.patch
https://github.com/robrwo/Net-IDN-Encode/commit/ea34f812d7dc67f3b211f4d92e74c6a7e24d764a.patch

-- 
Paul Johnson - paul@...j.net
