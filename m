X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/01/6
Message-ID: <64388b74-6a36-4273-a8de-e404a7445985@cpansec.org>
Date: Wed, 1 Jul 2026 07:47:12 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-56016: CGI::Session::ID::md5 versions before 4.49 for Perl generate predictable session ids from low-entropy sources
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-56016                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-56016
   Distribution:  CGI-Session
       Versions:  before 4.49

       MetaCPAN:  https://metacpan.org/dist/CGI-Session
       VCS Repo:  http://github.com/cromedome/cgi-session


CGI::Session::ID::md5 versions before 4.49 for Perl generate
predictable session ids from low-entropy sources

Description
-----------
CGI::Session::ID::md5 versions before 4.49 for Perl generate
predictable session ids from low-entropy sources.

The generate_id method builds the session id from a MD5 digest of the
process id, the epoch time, and the built-in rand() function. All three
are predictable, low-entropy sources: the PID is drawn from a small
range, the epoch time can be guessed or read from the HTTP Date header,
and Perl's rand() is unsuitable for security purposes because it is
predictable and reversible.

An attacker who predicts a session id can impersonate the corresponding
session and bypass authentication.

Problem types
-------------
- CWE-340 Generation of Predictable Numbers or Identifiers
- CWE-338 Use of Cryptographically Weak Pseudo-Random Number Generator

Solutions
---------
Upgrade to CGI::Session 4.49 or later, which generates session ids from
Crypt::SysRandom.


References
----------
https://metacpan.org/release/MARKSTOS/CGI-Session-4.49/changes
https://metacpan.org/release/MARKSTOS/CGI-Session-4.49/source/lib/CGI/Session/ID/md5.pm

Timeline
--------
- 2026-06-30: Version 4.49 released with fix.



