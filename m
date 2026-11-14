X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/14/10
Message-ID: <4ae5f31b-2f54-4ed1-a7ce-b981999177f7@cpansec.org>
Date: Sat, 14 Nov 2026 13:57:16 +0000
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2011-10042: HTTP::Session versions before 0.43 for Perl allow memcached command injection via unfiltered session ids in HTTP::Session::Store::Memcached
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2011-10042                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2011-10042

   Distribution:  http-session
       Versions:  before 0.43
       MetaCPAN:  https://metacpan.org/dist/http-session
       VCS Repo:  https://github.com/tokuhirom/http-session


HTTP::Session versions before 0.43 for Perl allow memcached command
injection via unfiltered session ids in HTTP::Session::Store::Memcached

Description
-----------
HTTP::Session versions before 0.43 for Perl allow memcached command
injection via unfiltered session ids in
HTTP::Session::Store::Memcached.

The session id from the client's cookie reaches memcached unchanged as
the cache key.

A CR and LF in the session id end the cache command early, and the
server reads the bytes after them as further commands.

Problem types
-------------
- CWE-93 Improper Neutralization of CRLF Sequences

Solutions
---------
Upgrade to HTTP::Session 0.43 or later.

Note that HTTP::Session 0.54 includes additional security fixes, but
has been marked as deprecated.    Users should migrate to an alternative
such as Plack::Middleware::Session.

References
----------
https://github.com/tokuhirom/http-session/commit/039345db9bc9311868019fde67b89c355114a3d3.patch
https://metacpan.org/release/TOKUHIROM/HTTP-Session-0.42/changes

Timeline
--------
- 2011-02-20: HTTP::Session version 0.42 released.
- 2011-02-20: HTTP::Session version 0.43 released with improved
   protections against memcached injection
- 2026-06-27: HTTP::Session version 0.54 released, with the
   distribution marked as deprecated.

Credits
-------
Masahiro Nagano (kazeburo), reporter

