X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/08/8
Message-Id: <D580057E-AE2D-424C-BFD4-B235AE098A7B@stig.io>
Date: Wed, 8 Jul 2026 15:58:50 +0100
From: Stig Palmquist <stig@...g.io>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-49146: App::Ack versions before 3.10.0 for Perl allow memory exhaustion via an unbounded context value in a project .ackrc
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-49146                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-49146
  Distribution:  ack
      Versions:  before 3.10.0

      MetaCPAN:  https://metacpan.org/dist/ack
      VCS Repo:  https://github.com/beyondgrep/ack3


App::Ack versions before 3.10.0 for Perl allow memory exhaustion via an
unbounded context value in a project .ackrc

Description
-----------
App::Ack versions before 3.10.0 for Perl allow memory exhaustion via an
unbounded context value in a project .ackrc.

ack searches up the directory hierarchy from the current directory for
a project .ackrc and loads its options. The -B and -C context options
accepted any positive integer, and ack sized the before-context buffer
to that value, so a project .ackrc setting --before-context=100000000
made ack allocate a buffer of 100 million elements.

A project .ackrc committed to an untrusted repository can abort ack
with an out-of-memory condition.

Problem types
-------------
- CWE-770 Allocation of Resources Without Limits or Throttling

Solutions
---------
Upgrade to ack 3.10.0 or later.


References
----------
https://github.com/beyondgrep/ack3/commit/45ff5fe77dbd96f7332f31943102291f878f30b8.patch
https://metacpan.org/release/PETDANCE/ack-v3.10.0/source/Changes

Timeline
--------
- 2026-06-07: Version 3.10.0 released with fix.

Credits
-------
Michał Majchrowicz (AFINE), finder
Marcin Wyczechowski (AFINE), finder




