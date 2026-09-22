X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/22/13
Message-ID: <arI17oo-ytXYaAS8@pjcj.com>
Date: Tue, 22 Sep 2026 10:03:30 +0200
From: Paul Johnson <paul@...j.net>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-87078: Net::IDN::Punycode versions from 2.302 before 2.590 for Perl leak the output buffer on every rejected label in decode_punycode
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-87078                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-87078

  Distribution:  Net-IDN-Encode
      Versions:  from 2.302 before 2.590
      MetaCPAN:  https://metacpan.org/dist/Net-IDN-Encode
      VCS Repo:  https://github.com/robrwo/Net-IDN-Encode


Net::IDN::Punycode versions from 2.302 before 2.590 for Perl leak the
output buffer on every rejected label in decode_punycode

Description
-----------
Net::IDN::Punycode versions from 2.302 before 2.590 for Perl leak the
output buffer on every rejected label in decode_punycode.

The XS backend allocates the scalar it returns before it validates the
input, sizing the buffer at twice the input length. The scalar is
released only on the success path, so each of the three croaks that
reject a label leaves the scalar and its buffer allocated. Nothing
bounds the label length in the to-Unicode direction, since the 63-byte
DNS limit is checked only when converting to ASCII.

Only the XS backend is affected.

A sender who supplies invalid labels grows the process by twice the
label length per rejected call, with no successful call needed.

Problem types
-------------
- CWE-401 Missing Release of Memory after Effective Lifetime

Solutions
---------
Upgrade to Net-IDN-Encode 2.590-TRIAL or later.

References
----------
https://metacpan.org/release/PJCJ/Net-IDN-Encode-2.590-TRIAL/changes
https://github.com/robrwo/Net-IDN-Encode/commit/92572f726e48af5559de4cc8a831463b79dfb217.patch
https://github.com/robrwo/Net-IDN-Encode/commit/edad63e0eeeeb18d93bc6dfe4d9dcdff9c244e1b.patch

Timeline
--------
- 2016-12-07: Version 2.302 released, introducing the defect.
- 2026-09-17: Version 2.590-TRIAL released with fix.

-- 
Paul Johnson - paul@...j.net
