X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/17/2
Message-ID: <allVDzsGr7PkCKl2@pjcj.com>
Date: Fri, 17 Jul 2026 00:03:58 +0200
From: Paul Johnson <paul@...j.net>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-57075: YAML::Syck versions before 1.47 for Perl allow an out-of-bounds read via a signed-char lookup-table index in syck_base64dec
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-57075                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-57075
  Distribution:  YAML-Syck
      Versions:  before 1.47

      MetaCPAN:  https://metacpan.org/dist/YAML-Syck
      VCS Repo:  https://github.com/toddr/YAML-Syck


YAML::Syck versions before 1.47 for Perl allow an out-of-bounds read
via a signed-char lookup-table index in syck_base64dec

Description
-----------
YAML::Syck versions before 1.47 for Perl allow an out-of-bounds read
via a signed-char lookup-table index in syck_base64dec.

The base64 decoder in the bundled libsyck indexes the 256-entry static
table b64_xtable with a signed char, so any !!binary byte >= 0x80
sign-extends to a negative index and reads before the table. The
decoder receives the raw bytes of any !!binary node, a standard YAML
type not gated by $LoadBlessed or $LoadCode, so it is reached on the
default Load path.

Any caller that runs Load or LoadFile on an untrusted document
containing a !!binary scalar with a high-bit byte triggers the read,
and the value read can surface in the decoded result.

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

-- 
Paul Johnson - paul@...j.net
