X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/23/2
Message-ID: <27264c762d756b40586804897e674906@cpansec.org>
Date: Sun, 23 Aug 2026 15:21:11 -0300
From: Timothy Legge <timlegge@...nsec.org>
To: Cve Announce <cve-announce@...urity.metacpan.org>, Oss Security <oss-security@...ts.openwall.com>
Subject: CVE-2026-75922: Reverse::Proxy versions before 0.04 for Perl allow HTTP request smuggling via a percent-decoded PATH_INFO written unencoded to the upstream request line
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-75922                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-75922
   Distribution:  Reverse-Proxy
       Versions:  before 0.04

       MetaCPAN:  https://metacpan.org/dist/Reverse-Proxy


Reverse::Proxy versions before 0.04 for Perl allow HTTP request
smuggling via a percent-decoded PATH_INFO written unencoded to the
upstream request line

Description
-----------
Reverse::Proxy versions before 0.04 for Perl allow HTTP request
smuggling via a percent-decoded PATH_INFO written unencoded to the
upstream request line.

PSGI hands PATH_INFO to an application percent-decoded, so a %XX
sequence in the client URL has become a raw byte by the time the proxy
sees it. The proxy appends that byte string to the upstream base URL,
and for an Upgrade tunnel writes it into a request line it serializes
itself, re-encoding nothing in either path. The HTTP client that sends
the resulting URL does not validate the target either. A path
containing %0d%0a therefore arrives at the upstream as a CRLF that ends
the request line, and a decoded space, '?' or '#' truncates it the same
way.

Everything the client writes after the CRLF is read by the upstream as
a second request. On the buffered path it arrives on a keep-alive
connection the proxy pools and reuses for other clients. Its method,
path and headers are all chosen by the client, and the upstream
attributes it to the proxy, so it reaches upstream paths that the
proxy's own routing does not expose.

Problem types
-------------
- CWE-444 Inconsistent Interpretation of HTTP Requests
- CWE-93 Improper Neutralization of CRLF Sequences

Solutions
---------
Upgrade to Reverse-Proxy 0.04 or later.

References
----------
https://metacpan.org/release/LNATION/Reverse-Proxy-0.03/source/Proxy.xs#L386-399
https://metacpan.org/release/LNATION/Reverse-Proxy-0.03/source/Proxy.xs#L654-666
https://metacpan.org/release/LNATION/Reverse-Proxy-0.04/source/Proxy.xs#L400-426
https://metacpan.org/release/LNATION/Reverse-Proxy-0.04/changes

