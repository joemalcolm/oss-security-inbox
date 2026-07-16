X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/17/1
Message-ID: <allT7g0CZsR1l0Xj@pjcj.com>
Date: Fri, 17 Jul 2026 00:02:15 +0200
From: Paul Johnson <paul@...j.net>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-13713: YAML::Syck versions before 1.47 for Perl allow a use-after-free and double-free via an anchor node freed while still on the parser value stack
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-13713                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-13713
  Distribution:  YAML-Syck
      Versions:  before 1.47

      MetaCPAN:  https://metacpan.org/dist/YAML-Syck
      VCS Repo:  https://github.com/toddr/YAML-Syck


YAML::Syck versions before 1.47 for Perl allow a use-after-free and
double-free via an anchor node freed while still on the parser value
stack

Description
-----------
YAML::Syck versions before 1.47 for Perl allow a use-after-free and
double-free via an anchor node freed while still on the parser value
stack.

In the bundled libsyck, when an anchor name is redefined or removed,
syck_hdlr_add_anchor and syck_hdlr_remove_anchor free the node stored
under that name with syck_free_node. That node can still be live on the
parser's value stack, so syck_hdlr_add_node reaches it again and frees
it a second time. On a normal build the 48-byte node chunk is freed
twice and the interpreter aborts. Anchors need no special flags, so
this is reached on the default Load path, and a 7-byte document that
redefines an anchor triggers it.

Any caller that runs Load or LoadFile on an untrusted document that
redefines an anchor mid-parse crashes the interpreter, a denial of
service.

Problem types
-------------
- CWE-416 Use After Free
- CWE-415 Double Free

Solutions
---------
Upgrade to YAML-Syck 1.47 or later.


References
----------
https://metacpan.org/release/TODDR/YAML-Syck-1.47/changes
https://github.com/toddr/YAML-Syck/commit/44c90a109ec3215ee7ce747bd11209835e123d8b.patch

-- 
Paul Johnson - paul@...j.net
