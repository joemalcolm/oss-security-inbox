X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/22/10
Message-ID: <arIz5JUBL9rwFEvg@pjcj.com>
Date: Tue, 22 Sep 2026 09:55:03 +0200
From: Paul Johnson <paul@...j.net>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2016-15059: Net::IDN::Punycode versions before 2.301 for Perl allow a heap buffer overflow via unchecked writes past the output buffer in encode_punycode
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2016-15059                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2016-15059

  Distribution:  Net-IDN-Encode
      Versions:  before 2.301
      MetaCPAN:  https://metacpan.org/dist/Net-IDN-Encode
      VCS Repo:  https://github.com/robrwo/Net-IDN-Encode


Net::IDN::Punycode versions before 2.301 for Perl allow a heap buffer
overflow via unchecked writes past the output buffer in encode_punycode

Description
-----------
Net::IDN::Punycode versions before 2.301 for Perl allow a heap buffer
overflow via unchecked writes past the output buffer in
encode_punycode.

The XS backend builds the encoded label in the string buffer of the
scalar it returns, sized from the input length. The loop that emits the
digits of each code point checks for room before every write, but the
write of the last digit of each round and the write of the terminating
NUL do not, so an input whose encoded form fills the buffer writes past
its end.

Only the XS backend is affected.

Encoding an attacker-supplied string corrupts the heap.

Problem types
-------------
- CWE-122 Heap-based Buffer Overflow

Solutions
---------
Upgrade to Net-IDN-Encode 2.301 or later.

References
----------
https://rt.cpan.org/Ticket/Display.html?id=118924
https://github.com/robrwo/Net-IDN-Encode/commit/9a3ba07f15d22c0347eefee9625b012cbc803657.patch
https://metacpan.org/release/CFAERBER/Net-IDN-Encode-2.301/changes

Timeline
--------
- 2016-12-03: Version 2.301 released with fix.

-- 
Paul Johnson - paul@...j.net
