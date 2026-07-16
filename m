X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/17/4
Message-ID: <allVtdyGFI5A4mVX@pjcj.com>
Date: Fri, 17 Jul 2026 00:06:38 +0200
From: Paul Johnson <paul@...j.net>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-57077: YAML::Syck versions before 1.47 for Perl allow an out-of-bounds read via an unbounded newline scan in newline_len
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-57077                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-57077
  Distribution:  YAML-Syck
      Versions:  before 1.47

      MetaCPAN:  https://metacpan.org/dist/YAML-Syck
      VCS Repo:  https://github.com/toddr/YAML-Syck


YAML::Syck versions before 1.47 for Perl allow an out-of-bounds read
via an unbounded newline scan in newline_len

Description
-----------
YAML::Syck versions before 1.47 for Perl allow an out-of-bounds read
via an unbounded newline scan in newline_len.

In the bundled libsyck newline_len and is_newline dereference the scan
pointer, and the following byte for a "\r\n" pair, with no
NUL-terminator or bounds check. During block-scalar lexing at a
document boundary the scan runs one byte past the heap lexer buffer.
This is an incomplete fix of CVE-2025-11683, on a lexer path the
earlier fix did not cover.

Any caller that runs Load or LoadFile on an untrusted document with a
block scalar at a document boundary reaches the over-read.

Problem types
-------------
- CWE-125 Out-of-bounds Read

Solutions
---------
Upgrade to YAML-Syck 1.47 or later.


References
----------
https://metacpan.org/release/TODDR/YAML-Syck-1.47/changes
https://github.com/toddr/YAML-Syck/commit/44c90a109ec3215ee7ce747bd11209835e123d8b.patch
https://www.cve.org/CVERecord?id=CVE-2025-11683

-- 
Paul Johnson - paul@...j.net
