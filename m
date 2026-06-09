X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/09/9
Message-ID: <cea59d13-5c19-4285-811f-13fd4e2d5837@cpansec.org>
Date: Tue, 9 Jun 2026 08:26:47 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-9698: DBI versions before 1.648 for Perl saved errors in a limited-sized buffer
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-9698                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-9698
   Distribution:  DBI
       Versions:  before 1.648

       MetaCPAN:  https://metacpan.org/dist/DBI
       VCS Repo:  https://github.com/perl5-dbi/dbi


DBI versions before 1.648 for Perl saved errors in a limited-sized
buffer

Description
-----------
DBI versions before 1.648 for Perl saved errors in a limited-sized
buffer.

Error messages that were returned when RaiseError, PrintError or
HandleError were set were written to a 200-byte buffer without a length
limit.

Attackers that can influence the error text in an application can
trigger a buffer overflow.

Problem types
-------------
- CWE-787 Out-of-bounds Write

Solutions
---------
Upgrade to DBI 1.648 or later.


References
----------
https://metacpan.org/release/HMBRAND/DBI-1.648/changes
https://github.com/perl5-dbi/dbi/commit/bfe5d73c162d2d1f761a639a0aa33aad6a9eb54e.patch

Timeline
--------
- 2026-04-25: Issue reported to CPANSec.
- 2026-05-27: Commit fixed the issue in DBI.
- 2026-06-04: DBI 1.648 released.



