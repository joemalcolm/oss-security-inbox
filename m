X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/30/12
Message-ID: <417c949c-4b17-4f4d-94f7-d0bb0bfa3b59@cpansec.org>
Date: Fri, 30 Oct 2026 12:40:02 +0000
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-116130: HTTP::Parser::XS versions before 0.18 for Perl truncate PATH_INFO at an encoded NUL byte in parse_http_request
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-116130                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-116130

   Distribution:  HTTP-Parser-XS
       Versions:  before 0.18
       MetaCPAN:  https://metacpan.org/dist/HTTP-Parser-XS
       VCS Repo:  https://github.com/kazuho/p5-http-parser-xs


HTTP::Parser::XS versions before 0.18 for Perl truncate PATH_INFO at an
encoded NUL byte in parse_http_request

Description
-----------
HTTP::Parser::XS versions before 0.18 for Perl truncate PATH_INFO at an
encoded NUL byte in parse_http_request.

The XS parser URL-decodes the request path and measures the result with
strlen(), so PATH_INFO ends at the first byte decoded from %00. The
pure-Perl backend is not affected.

A remote attacker can send a path that a proxy or filter checks in full
while the application routes on a shorter one.

Problem types
-------------
- CWE-626 Null Byte Interaction Error (Poison Null Byte)

Solutions
---------
Upgrade to HTTP-Parser-XS 0.18 or later.

References
----------
https://github.com/kazuho/p5-http-parser-xs/commit/f388b9d7994722b01edd03d57de7d2fb819e1aae.patch
https://metacpan.org/release/KAZUHO/HTTP-Parser-XS-0.18/changes

