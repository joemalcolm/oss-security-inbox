X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/14/5
Message-ID: <ai8N9tPO4mAda87d@pjcj.com>
Date: Sun, 14 Jun 2026 22:28:36 +0200
From: Paul Johnson <paul@...j.net>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-11527: Config::IniFiles versions before 3.001000 for Perl allow OS command injection and file overwrite via a 2-arg open() of the -file argument in _make_filehandle
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-11527                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-11527
  Distribution:  Config-IniFiles
      Versions:  before 3.001000

      MetaCPAN:  https://metacpan.org/dist/Config-IniFiles
      VCS Repo:  https://github.com/shlomif/perl-Config-IniFiles


Config::IniFiles versions before 3.001000 for Perl allow OS command
injection and file overwrite via a 2-arg open() of the -file argument
in _make_filehandle

Description
-----------
Config::IniFiles versions before 3.001000 for Perl allow OS command
injection and file overwrite via a 2-arg open() of the -file argument
in _make_filehandle.

Config::IniFiles::_make_filehandle opens a filename argument with
Perl's 2-arg open(), so a filename that begins or ends with a pipe ("|
cmd", "cmd |") or begins with a redirect ("> path", ">> path") is run
as a command or redirect rather than opened as a file. The helper is
the open path behind the documented -file argument: new(-file =>
$thing) reaches it through ReadConfig. An in-memory scalar reference
(-file => \$text) does not open a path and is unaffected.

Any caller that forwards untrusted input to the -file argument can run
an arbitrary command or truncate a file under the process UID.

Problem types
-------------
- CWE-78 Improper Neutralization of Special Elements used in an OS
  Command ('OS Command Injection')
- CWE-73 External Control of File Name or Path

Workarounds
-----------
For deployments that cannot upgrade to 3.001000, do not pass untrusted
input as the -file argument. Callers can open the file themselves and
pass the resulting filehandle, or pass the configuration as an
in-memory scalar reference, which bypasses the affected string path.


Solutions
---------
Upgrade to Config::IniFiles 3.001000 or later, which opens the -file
argument with a 3-arg read open so the filename is never interpreted as
a command or redirect.


References
----------
https://github.com/shlomif/perl-Config-IniFiles/commit/3e48f9627fbba4dae5de35be1f735cdeb7e47fb8.patch
https://metacpan.org/release/SHLOMIF/Config-IniFiles-3.001000/changes

-- 
Paul Johnson - paul@...j.net
