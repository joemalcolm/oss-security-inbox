X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/29/17
Message-ID: <d18394a2-4d4e-484c-9fff-15c2261337c9@cpansec.org>
Date: Mon, 29 Jun 2026 20:41:09 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-56018: JavaScript::Minifier::XS versions before 0.16 for Perl leak memory on every call to minify(), allowing unbounded memory growth
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-56018                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-56018
   Distribution:  JavaScript-Minifier-XS
       Versions:  before 0.16

       MetaCPAN:  https://metacpan.org/dist/JavaScript-Minifier-XS
       VCS Repo: https://github.com/bleargh45/JavaScript-Minifier-XS


JavaScript::Minifier::XS versions before 0.16 for Perl leak memory on
every call to minify(), allowing unbounded memory growth

Description
-----------
JavaScript::Minifier::XS versions before 0.16 for Perl leak memory on
every call to minify(), allowing unbounded memory growth.

In JsMinify (XS.xs) the cleanup frees only the NodeSet structures and
never the per-token contents buffers allocated in JsSetNodeContents;
JsDiscardNode unlinks nodes without freeing their contents. Each
token's contents buffer is therefore leaked on every call, and the two
early returns taken when the node list is empty leak the whole NodeSet.

A long-lived process that minifies repeatedly, such as an asset
pipeline or a server-side minifier endpoint, grows in memory without
bound until it exhausts available memory and is killed, causing denial
of service.

Problem types
-------------
- CWE-401 Missing Release of Memory after Effective Lifetime
- CWE-400 Uncontrolled Resource Consumption

Solutions
---------
Upgrade to JavaScript::Minifier::XS version 0.16 or later.


References
----------
https://github.com/bleargh45/JavaScript-Minifier-XS/issues/10
https://metacpan.org/release/GTERMARS/JavaScript-Minifier-XS-0.16/changes



