X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/10/17
Message-ID: <23f1fc83-400a-4a02-8f6d-751d5cc71e2f@cpansec.org>
Date: Wed, 10 Jun 2026 19:36:00 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-50637: Metrics::Any::Adapter::Statsd versions before 0.04 for Perl does not protect against metric injections
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-50637                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-50637
   Distribution:  Metrics-Any-Adapter-Statsd
       Versions:  before 0.04

       MetaCPAN: https://metacpan.org/dist/Metrics-Any-Adapter-Statsd


Metrics::Any::Adapter::Statsd versions before 0.04 for Perl does not
protect against metric injections

Description
-----------
Metrics::Any::Adapter::Statsd versions before 0.04 for Perl does not
protect against metric injections.

The statsd protocol (and extensions) allow mutiple metrics,separated by
newlines, to be sent per packet.

The send method does not validate the contents of the metric names or
values. If the names have newlines and statsd control characters
(colon, pipe) then metric injections are possible.

Version 0.04 fixed this by modifying the _make method to block metric
names with characters below ASCII 32 (which includes the newline), or
colons or pipes.

Problem types
-------------
- CWE-93 Improper Neutralization of CRLF Sequences

Solutions
---------
Upgrade to v0.04 or later.


References
----------
https://metacpan.org/release/PEVANS/Metrics-Any-Adapter-Statsd-0.04/changes
https://www.cve.org/CVERecord?id=CVE-2026-46719
https://www.cve.org/CVERecord?id=CVE-2026-46720
https://www.cve.org/CVERecord?id=CVE-2026-46739



