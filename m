X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/01/2
Message-ID: <57c6917e-7db9-49c1-8dda-c4905cc73c3a@cpansec.org>
Date: Sun, 1 Nov 2026 10:48:56 +0000
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-13575: HTTP::Session versions before 0.54 for Perl allow memcached command injection via unfiltered session ids in HTTP::Session::Store::CHI
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-13575                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-13575

   Distribution:  http-session
       Versions:  before 0.54
       MetaCPAN:  https://metacpan.org/dist/http-session
       VCS Repo:  https://github.com/tokuhirom/http-session


HTTP::Session versions before 0.54 for Perl allow memcached command
injection via unfiltered session ids in HTTP::Session::Store::CHI

Description
-----------
HTTP::Session versions before 0.54 for Perl allow memcached command
injection via unfiltered session ids in HTTP::Session::Store::CHI.

The session id from the client's cookie reaches the CHI cache
unchanged. The sibling HTTP::Session::Store::Memcached rejects ids that
contain control characters, but the CHI store has no such check, and
CHI does not escape keys for its memcached drivers.

With a memcached driver, a CR and LF in the session id end the cache
command early, and the server reads the bytes after them as further
commands.

Problem types
-------------
- CWE-93 Improper Neutralization of CRLF Sequences

Solutions
---------
Upgrade to http-session 0.54 or later.

References
----------
https://metacpan.org/release/KTAT/http-session-0.53/source/lib/HTTP/Session/Store/CHI.pm
https://github.com/tokuhirom/http-session/commit/58288cbf941da6d2aad4ff5c0c79e523d9e583b4.patch
https://metacpan.org/release/TOKUHIROM/http-session-0.54/changes



