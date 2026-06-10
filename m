X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/10/19
Message-ID: <59de0034-37e7-44ca-bab3-5e3e9d996207@cpansec.org>
Date: Wed, 10 Jun 2026 19:34:22 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-50639: Metrics::Any::Adapter::SignalFx versions before 0.04 for Perl does not protect against metric injections
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-50639                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-50639
   Distribution:  Metrics-Any-Adapter-Statsd
       Versions:  before 0.04

       MetaCPAN: https://metacpan.org/dist/Metrics-Any-Adapter-Statsd


Metrics::Any::Adapter::SignalFx versions before 0.04 for Perl does not
protect against metric injections

Description
-----------
Metrics::Any::Adapter::SignalFx versions before 0.04 for Perl does not
protect against metric injections.

The statsd protocol (and extensions such as dogstatsd) allow mutiple
metrics,separated by newlines, to be sent per packet.

Metrics::Any::Adapter::SignalFx which extends
Metrics::Any::Adapter::Statsd, which has a similar vulnerability.

In addition, the _labels function does not check tags labels newlines
or statsd control characters. The labels can be used for metric
injections.

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



