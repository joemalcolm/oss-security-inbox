X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/09/32
Message-ID: <c9493162-93ae-4a69-a994-306e990d4d47@cpansec.org>
Date: Mon, 9 Nov 2026 21:17:20 +0000
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-115864: Monoceros versions before 0.30 for Perl allow a request declaring a large Content-Length to kill a worker by exhausting memory
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-115864                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-115864

   Distribution:  Monoceros
       Versions:  before 0.30
       MetaCPAN:  https://metacpan.org/dist/Monoceros
       VCS Repo:  https://github.com/kazeburo/Monoceros


Monoceros versions before 0.30 for Perl allow a request declaring a
large Content-Length to kill a worker by exhausting memory

Description
-----------
Monoceros versions before 0.30 for Perl allow a request declaring a
large Content-Length to kill a worker by exhausting memory.

The request body is read in a loop that asks sysread for all of the
remaining declared length at once. Perl grows the read buffer to that
size before any data arrives, so a length larger than available memory
makes the worker exit with an uncatchable out of memory error before
the application is called.

A remote attacker can force a worker restart with each request of a few
bytes.

Problem types
-------------
- CWE-789 Memory Allocation with Excessive Size Value

Solutions
---------
Upgrade to Monoceros 0.30 or later.

References
----------
https://github.com/kazeburo/Monoceros/commit/897a4a9624329fc0a4b2352d387bdac6d37848e2.patch
https://metacpan.org/release/KAZEBURO/Monoceros-0.30/changes

