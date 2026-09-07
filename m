X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/07/1
Message-ID: <61e15e3a-449a-47ae-beef-69d668daf084@cpansec.org>
Date: Mon, 7 Sep 2026 19:28:36 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-86287: Net::IP::LPM versions before 1.12 for Perl accept malformed prefix lengths
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-86287                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-86287
   Distribution:  Net-IP-LPM
       Versions:  before 1.12

       MetaCPAN:  https://metacpan.org/dist/Net-IP-LPM
       VCS Repo:  https://github.com/robrwo/perl-Net-IP-LPM


Net::IP::LPM versions before 1.12 for Perl accept malformed prefix
lengths

Description
-----------
Net::IP::LPM versions before 1.12 for Perl accept malformed prefix
lengths.

Non-numeric and non-ASCII prefix lengths are accepted and treated as 0.
Integers over 31 bits are silently truncated.  A single malformed mask
will poison the lookup table.

The result is that the lookup will silently succeed for every address.
An allow-list will allow every address, and a deny-list will block
every address.

Problem types
-------------
- CWE-1287 Improper Validation of Specified Type of Input

Solutions
---------
Upgrade to Net::IP::LPM version 1.12 or later.

References
----------
https://github.com/robrwo/perl-Net-IP-LPM/commit/814f8baa85537827db8c3b3d251e48db7aca318f.patch
https://metacpan.org/release/RRWO/Net-IP-LPM-1.12/changes



