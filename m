X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/24/4
Message-ID: <77a99e7b-6c9a-4498-b1dc-12e99514cc5a@cpansec.org>
Date: Sat, 24 Oct 2026 14:53:21 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-114629: Web::Simple versions before 0.035 for Perl allocate a buffer sized by the Content-Length header for urlencoded body parameters
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-114629                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-114629

   Distribution:  Web-Simple
       Versions:  before 0.035
       MetaCPAN:  https://metacpan.org/dist/Web-Simple
       VCS Repo:  https://github.com/p5sagit/Web-Simple


Web::Simple versions before 0.035 for Perl allocate a buffer sized by
the Content-Length header for urlencoded body parameters

Description
-----------
Web::Simple versions before 0.035 for Perl allocate a buffer sized by
the Content-Length header for urlencoded body parameters.

Web::Dispatch::ParamParser::get_unpacked_body_from reads an
application/x-www-form-urlencoded body using a single read call, with
no cap and the return value ignored. Perl's read grows the buffer to
the requested length before reading, so the declared Content-Length
determines the allocation.

An attacker can trigger this through any route whose dispatch
specification has a % body-parameter match, such as sub (POST +
%name=), sending a Content-Length far larger than the body actually
sent. No authentication is involved.

Problem types
-------------
- CWE-789 Memory Allocation with Excessive Size Value

Workarounds
-----------
For deployments that cannot upgrade but are running behind a reverse
proxy, configure the proxy to reject requests above a maxiumum
Content-Length.

Solutions
---------
Upgrade to Web::Simple 0.035 or later, and in the application configure
$Web::Dispatch::ParamParser::MAX_BODY_SIZE.

References
----------
https://github.com/p5sagit/Web-Simple/commit/7e02c4f6204a2898938d357e6efe6dc2679af695.patch
https://metacpan.org/release/ETHER/Web-Simple-0.035/changes


