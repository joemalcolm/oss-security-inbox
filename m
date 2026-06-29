X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/29/16
Message-ID: <172fabf2-e864-4c9f-8493-5206b529a4ee@cpansec.org>
Date: Mon, 29 Jun 2026 20:40:11 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-56017: JavaScript::Minifier::XS versions before 0.16 for Perl crash with a NULL pointer dereference when the first meaningful token of the input is a slash
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-56017                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-56017
   Distribution:  JavaScript-Minifier-XS
       Versions:  before 0.16

       MetaCPAN:  https://metacpan.org/dist/JavaScript-Minifier-XS
       VCS Repo: https://github.com/bleargh45/JavaScript-Minifier-XS


JavaScript::Minifier::XS versions before 0.16 for Perl crash with a
NULL pointer dereference when the first meaningful token of the input
is a slash

Description
-----------
JavaScript::Minifier::XS versions before 0.16 for Perl crash with a
NULL pointer dereference when the first meaningful token of the input
is a slash.

The regexp versus division disambiguator in JsTokenizeString (XS.xs)
inspects the previous token's last byte to choose between a regexp
literal and a division operator. When a slash is the first meaningful
token, with the start of input or only whitespace and comments before
it, there is no valid preceding token: the walk back over whitespace
and comment nodes runs off the head of the node list to NULL, and the
byte lookup reads through a NULL contents pointer at an underflowed
length index. The following identifier check dereferences the same NULL
pointer.

The crash is reachable through the public minify() API, so input as
small as a single slash byte crashes the calling process. A service
that minifies untrusted or third-party JavaScript can be crashed by a
remote request, causing denial of service.

Problem types
-------------
- CWE-476 NULL Pointer Dereference
- CWE-125 Out-of-bounds Read

Solutions
---------
Upgrade to JavaScript::Minifier::XS version 0.16 or later.


References
----------
https://metacpan.org/release/GTERMARS/JavaScript-Minifier-XS-0.16/changes



