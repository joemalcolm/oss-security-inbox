X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/10/18
Message-ID: <ca0b6615-8567-4c76-bb2d-ca6436d2eb72@cpansec.org>
Date: Wed, 10 Jun 2026 19:35:09 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-50638: Metrics::Any::Adapter::DogStatsd versions before 0.04 for Perl does not protect against metric injections
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-50638                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-50638
   Distribution:  Metrics-Any-Adapter-Statsd
       Versions:  before 0.04

       MetaCPAN: https://metacpan.org/dist/Metrics-Any-Adapter-Statsd


Metrics::Any::Adapter::DogStatsd versions before 0.04 for Perl does not
protect against metric injections

Description
-----------
Metrics::Any::Adapter::DogStatsd versions before 0.04 for Perl does not
protect against metric injections.

The statsd protocol (and extensions such as dogstatsd) allow mutiple
metrics,separated by newlines, to be sent per packet.

Metrics::Any::Adapter::DogStatsd which extends
Metrics::Any::Adapter::Statsd, which has a similar vulnerability.

In addition, the _tags function does not check tags for newlines or
statsd control characters. The tags can be used for metric injections.

Problem types
-------------
- CWE-93 Improper Neutralization of CRLF Sequences

Solutions
---------
Upgrade to v0.04 or later.


References
----------
https://metacpan.org/release/PEVANS/Metrics-Any-Adapter-Statsd-0.04/changes
https://www.cve.org/CVERecord?id=CVE-2026-50637
https://www.cve.org/CVERecord?id=CVE-2026-9270



