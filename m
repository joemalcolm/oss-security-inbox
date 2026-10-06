X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/06/1
Message-ID: <e3c9469815721aa1bac6b22b93de6636@cpansec.org>
Date: Mon, 05 Oct 2026 22:14:49 -0300
From: Timothy Legge <timlegge@...nsec.org>
To: Cve Announce <cve-announce@...urity.metacpan.org>, Oss Security <oss-security@...ts.openwall.com>
Subject: CVE-2026-104380: Punk versions from 0.48 before 0.55 for Perl route Extended CONNECT requests to any GET route without an Origin check in ps_serve_one
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-104380                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-104380

   Distribution:  Punk
       Versions:  from 0.48 before 0.55
       MetaCPAN:  https://metacpan.org/dist/Punk


Punk versions from 0.48 before 0.55 for Perl route Extended CONNECT
requests to any GET route without an Origin check in ps_serve_one

Description
-----------
Punk versions from 0.48 before 0.55 for Perl route Extended CONNECT
requests to any GET route without an Origin check in ps_serve_one.

On HTTP/2 and HTTP/3 a WebSocket handshake arrives as an Extended
CONNECT, which is matched as a GET and so reaches every GET route, API
operation and mount. The Origin check runs only when a websocket route
matches. On this transport the handler's status is the handshake
response, and a 2xx accepts it.

A cross-origin page can open a WebSocket to any path and learn from its
open or error event whether that path returns 2xx.

Problem types
-------------
- CWE-1385 Missing Origin Validation in WebSockets

Solutions
---------
Upgrade to Punk 0.55 or later.

References
----------
https://metacpan.org/release/LNATION/Punk-0.55/diff/LNATION/Punk-0.54
https://metacpan.org/release/LNATION/Punk-0.55/changes
