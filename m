X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/26/10
Message-ID: <4cee5e32-eda3-4a65-a3b4-66dd12e41c16@cpansec.org>
Date: Sun, 25 Oct 2026 16:56:52 +0000
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-115825: HTTP::Server::PSGI versions before 1.0056 for Perl allow a single request to crash the server by declaring a large Content-Length
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-115825                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-115825

   Distribution:  Plack
       Versions:  before 1.0056
       MetaCPAN:  https://metacpan.org/dist/Plack
       VCS Repo:  https://github.com/plack/Plack


HTTP::Server::PSGI versions before 1.0056 for Perl allow a single
request to crash the server by declaring a large Content-Length

Description
-----------
HTTP::Server::PSGI versions before 1.0056 for Perl allow a single
request to crash the server by declaring a large Content-Length.

The request body is read with sysread() calls sized by the remaining
Content-Length. Perl grows the read buffer to the requested length
before any data arrives, so the server tries to allocate as much memory
as the client declares.

A remote attacker can send one request with a large Content-Length and
a few body bytes, and perl exits with an out-of-memory error before the
application is called. HTTP::Server::PSGI runs as a single process, so
the server stays down until restarted.

Problem types
-------------
- CWE-789 Memory Allocation with Excessive Size Value

Solutions
---------
Upgrade to Plack 1.0057 or later.

References
----------
https://github.com/plack/Plack/commit/11545871cadc5df1b744cebb429cfeb4ebc1069a.patch
https://metacpan.org/release/MIYAGAWA/Plack-1.0056/changes



