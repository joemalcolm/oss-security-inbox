X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/22/4
Message-ID: <d5ad206c-89d9-4778-9dbe-5f3ce730169f@cpansec.org>
Date: Mon, 22 Jun 2026 12:31:58 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-11373: Net::Statsite::Client versions through 1.1.0 for Perl allow metric injections
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-11373                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-11373
   Distribution:  Net-Statsite-Client
       Versions:  through 1.1.0

       MetaCPAN:  https://metacpan.org/dist/Net-Statsite-Client
       VCS Repo:  https://github.com/avast/Net-Statsite-Client


Net::Statsite::Client versions through 1.1.0 for Perl allow metric
injections

Description
-----------
Net::Statsite::Client versions through 1.1.0 for Perl allow metric
injections.

Net::Statsite::Client is a client for the statsite protocol, which is a
variant of statsd.

Newlines are not removed from metric names, allowing metric injections.

Values are not sanitised for newlines or other protocol control
characters such as colons or pipes, allowing metric injections.

Problem types
-------------
- CWE-93 Improper Neutralization of CRLF Sequences
- CWE-150 Improper Neutralization of Escape, Meta, or Control Sequences

Workarounds
-----------
Apply the patch.

Otherwise ensure that metric names and values come from trusted sources
or are properly sanitised.


References
----------
https://metacpan.org/release/JASEI/Net-Statsite-Client-1.1.0/view/lib/Net/Statsite/Client.pm
https://security.metacpan.org/patches/N/Net-Statsite-Client/1.1.0/CVE-2026-11373-r1.patch
http://armon.github.io/statsite
https://www.cve.org/CVERecord?id=CVE-2026-46719
https://www.cve.org/CVERecord?id=CVE-2026-46720
https://www.cve.org/CVERecord?id=CVE-2026-46739



