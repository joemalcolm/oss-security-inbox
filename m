X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/14/4
Message-ID: <ai8NBqZeD-zb3wnf@pjcj.com>
Date: Sun, 14 Jun 2026 22:24:10 +0200
From: Paul Johnson <paul@...j.net>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-11526: GD versions before 2.86 for Perl allow OS command injection and file overwrite via a 2-arg open() of filename arguments in _make_filehandle
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-11526                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-11526
  Distribution:  GD
      Versions:  before 2.86

      MetaCPAN:  https://metacpan.org/dist/GD
      VCS Repo:  https://github.com/lstein/Perl-GD


GD versions before 2.86 for Perl allow OS command injection and file
overwrite via a 2-arg open() of filename arguments in _make_filehandle

Description
-----------
GD versions before 2.86 for Perl allow OS command injection and file
overwrite via a 2-arg open() of filename arguments in _make_filehandle.

GD::Image::_make_filehandle opens a filename argument with Perl's 2-arg
open(), so a filename that begins or ends with a pipe ("| cmd", "cmd
|") or begins with a redirect ("> path", ">> path") is run as a command
or redirect rather than opened as a file. _make_filehandle is the
single open path behind every filename-accepting constructor (new,
newFromPng, newFromJpeg, and the rest); the in-memory *Data variants do
not open a path and are unaffected.

Any caller that forwards untrusted input to one of these constructors
as a pathname can run an arbitrary command or truncate a file under the
process UID.

Problem types
-------------
- CWE-78 Improper Neutralization of Special Elements used in an OS
  Command ('OS Command Injection')
- CWE-73 External Control of File Name or Path

Workarounds
-----------
For deployments that cannot upgrade to 2.86, do not pass untrusted
input as a pathname to GD::Image constructors. Callers can open the
file themselves and pass the resulting filehandle, which bypasses the
affected string path.


Solutions
---------
Upgrade to GD 2.86 or later, which opens filename arguments with a
3-arg read open so the filename is never interpreted as a command or
redirect.


References
----------
https://github.com/lstein/Perl-GD/commit/67b163713c6c78dfeb693da0978ae934e5cd8210.patch
https://metacpan.org/release/RURBAN/GD-2.86/changes

-- 
Paul Johnson - paul@...j.net
