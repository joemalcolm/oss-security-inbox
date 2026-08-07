X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/07/7
Message-ID: <bfa01c32-3f21-4865-8010-95ef51c4b118@cpansec.org>
Date: Fri, 7 Aug 2026 20:04:36 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-17435: File::Rotate::Simple versions before 0.4.0 for Perl create the target of dangling symlinks when rotating files
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-17435                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-17435
   Distribution:  File-Rotate-Simple
       Versions:  before 0.4.0

       MetaCPAN:  https://metacpan.org/dist/File-Rotate-Simple
       VCS Repo:  https://github.com/robrwo/File-Rotate-Simple


File::Rotate::Simple versions before 0.4.0 for Perl create the target
of dangling symlinks when rotating files

Description
-----------
File::Rotate::Simple versions before 0.4.0 for Perl create the target
of dangling symlinks when rotating files.

When the file to be rotated is a symbolic link to a missing file, and
the touch option is enabled, then the rotate method assumes that the
file is absent (since the existence check is against the target), and
does not rotate it. But it touches the file, which creates the target.

An attacker that has the ability to create the symlink can use this to
create an arbitrary file with permissions of the process rotating the
files (which may be different from the process that normally writes to
the log file that is being rotated).

Note that the touch option is disabled by default.

Problem types
-------------
- CWE-59 Improper Link Resolution Before File Access ('Link Following')

Workarounds
-----------
For deployments that cannot be upgraded, ensure the touch option is
disabled.


Solutions
---------
Upgrade to version 0.4.0 or later.


References
----------
https://github.com/robrwo/File-Rotate-Simple/commit/ead3f5c0e51217b34d286aa243949dba60b39eba.patch
https://github.com/robrwo/File-Rotate-Simple/security/advisories/GHSA-fpmm-8f6h-wv74
https://metacpan.org/release/RRWO/File-Rotate-Simple-v0.4.0/changes



