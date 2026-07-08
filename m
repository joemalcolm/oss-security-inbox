X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/08/7
Message-Id: <A2980B4A-82BC-407B-ACF3-AB557F6703B1@stig.io>
Date: Wed, 8 Jul 2026 15:57:34 +0100
From: Stig Palmquist <stig@...g.io>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-49145: App::Ack versions through 3.10.0 for Perl read arbitrary files via --files-from in a project .ackrc
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-49145                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-49145
  Distribution:  ack
      Versions:  through 3.10.0

      MetaCPAN:  https://metacpan.org/dist/ack
      VCS Repo:  https://github.com/beyondgrep/ack3


App::Ack versions through 3.10.0 for Perl read arbitrary files via
--files-from in a project .ackrc

Description
-----------
App::Ack versions through 3.10.0 for Perl read arbitrary files via
--files-from in a project .ackrc.

ack searches up the directory hierarchy from the current directory for
a project .ackrc and loads its options. The project-source option
blocklist in App::Ack::ConfigLoader does not include --files-from, so a
project .ackrc can set it to a path whose listed files ack then reads
and searches. Version 3.10.0 added --follow to the blocklist;
--files-from remains accepted.

A project .ackrc committed to an untrusted repository can make ack read
files outside the project and print their matching lines.

Problem types
-------------
- CWE-73 External Control of File Name or Path
- CWE-426 Untrusted Search Path

Workarounds
-----------
Run ack with --noenv, or avoid running ack in a directory tree that
contains an untrusted .ackrc.


Solutions
---------
Upgrade to a future ack release.


References
----------
https://metacpan.org/release/PETDANCE/ack-v3.10.0/source/Changes

Timeline
--------
- 2026-06-07: Version 3.10.0 released with partial fix for the --follow
  option.

Credits
-------
Michał Majchrowicz (AFINE), finder
Marcin Wyczechowski (AFINE), finder




