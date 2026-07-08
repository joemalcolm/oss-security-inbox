X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/08/9
Message-Id: <08ED9A58-8DEB-4DB3-9912-703497E2AB80@stig.io>
Date: Wed, 8 Jul 2026 16:00:32 +0100
From: Stig Palmquist <stig@...g.io>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-49147: App::Ack versions through 3.10.0 for Perl print unsanitised terminal escape sequences from filenames in several output modes
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-49147                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-49147
  Distribution:  ack
      Versions:  through 3.10.0

      MetaCPAN:  https://metacpan.org/dist/ack
      VCS Repo:  https://github.com/beyondgrep/ack3


App::Ack versions through 3.10.0 for Perl print unsanitised terminal
escape sequences from filenames in several output modes

Description
-----------
App::Ack versions through 3.10.0 for Perl print unsanitised terminal
escape sequences from filenames in several output modes.

When ack prints a filename whose basename contains terminal control
bytes such as ANSI escape sequences, those bytes reach the terminal
unchanged. Version 3.10.0 added a _safe_filename helper that sanitises
the filenames printed by -f, -g, the colored match heading, and
per-match lines, but the --show-types, -l/-L, and -c paths still emit
the raw filename.

A file whose name embeds cursor-movement or color escapes can overwrite
or recolor earlier terminal output, or be passed unchanged to a
downstream consumer.

Problem types
-------------
- CWE-150 Improper Neutralization of Escape, Meta, or Control Sequences

Workarounds
-----------
Pipe ack output through a filter that strips terminal control
characters when running ack over untrusted filenames.


Solutions
---------
Upgrade to a future ack release.


References
----------
https://metacpan.org/release/PETDANCE/ack-v3.10.0/source/Changes

Timeline
--------
- 2026-06-07: Version 3.10.0 released with partial fix for most output
  paths.

Credits
-------
Michał Majchrowicz (AFINE), finder
Marcin Wyczechowski (AFINE), finder


