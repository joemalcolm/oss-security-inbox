X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/17/3
Message-ID: <allVZM9ibZQHlI_4@pjcj.com>
Date: Fri, 17 Jul 2026 00:05:18 +0200
From: Paul Johnson <paul@...j.net>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-57076: YAML::Syck versions before 1.47 for Perl allow a heap use-after-free via an anchor name reused as an anchors-table key in syck_hdlr_add_anchor
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-57076                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-57076
  Distribution:  YAML-Syck
      Versions:  before 1.47

      MetaCPAN:  https://metacpan.org/dist/YAML-Syck
      VCS Repo:  https://github.com/toddr/YAML-Syck


YAML::Syck versions before 1.47 for Perl allow a heap use-after-free
via an anchor name reused as an anchors-table key in
syck_hdlr_add_anchor

Description
-----------
YAML::Syck versions before 1.47 for Perl allow a heap use-after-free
via an anchor name reused as an anchors-table key in
syck_hdlr_add_anchor.

In the bundled libsyck an anchor name allocated by syck_strndup is
stored both as node->anchor, freed when the node is freed, and as the
key in the parser's anchors table. Freeing the node frees the shared
key, and a later anchor redefinition makes st_delete compare against
the freed key, so st_strcmp reads freed heap memory. Anchors are a
standard YAML feature and need no special flags, so this is reached on
the default Load path.

Any caller that runs Load or LoadFile on an untrusted document that
redefines an anchor reaches the read of freed memory.

Problem types
-------------
- CWE-416 Use After Free

Solutions
---------
Upgrade to YAML-Syck 1.47 or later.


References
----------
https://metacpan.org/release/TODDR/YAML-Syck-1.47/changes
https://github.com/toddr/YAML-Syck/commit/44c90a109ec3215ee7ce747bd11209835e123d8b.patch

-- 
Paul Johnson - paul@...j.net
