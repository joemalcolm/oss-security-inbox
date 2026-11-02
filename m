X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/02/5
Message-ID: <e4a1cce4-fd3f-41ce-8310-922db2beffb5@cpansec.org>
Date: Mon, 2 Nov 2026 17:02:41 +0000
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-65059: Furl versions through 3.15 for Perl allow memory exhaustion via unbounded decompression of HTTP responses
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-65059                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-65059

   Distribution:  Furl
       Versions:  through 3.15
       MetaCPAN:  https://metacpan.org/dist/Furl
       VCS Repo:  https://github.com/tokuhirom/Furl


Furl versions through 3.15 for Perl allow memory exhaustion via
unbounded decompression of HTTP responses

Description
-----------
Furl versions through 3.15 for Perl allow memory exhaustion via
unbounded decompression of HTTP responses.

Furl inflates a response body sent with a gzip, x-gzip or deflate
Content-Encoding and appends the output to the response string with no
size limit. It does this whether or not the request asked for
compression, and no option caps the decompressed size. Responses read
with write_file or write_code are streamed rather than held in memory.

A malicious server, or an attacker on a plain HTTP connection, can send
a small compressed response that expands to exhaust the client's memory
and end the process.

Problem types
-------------
- CWE-409 Improper Handling of Highly Compressed Data (Data
   Amplification)

Solutions
---------
No fixed CPAN release is currently available.

References
----------
https://metacpan.org/release/SYOHEX/Furl-3.15/source/lib/Furl/ZlibStream.pm
https://github.com/tokuhirom/Furl/pull/139

