X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/07/11
Message-ID: <f520898a-d327-4deb-ac95-d9ebc02560e2@cpansec.org>
Date: Sat, 7 Nov 2026 11:52:04 +0000
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-123776: RRD::CGI::Image versions through 0.01 for Perl pass CGI query parameters containting "tz" to tzset(), , so a FIFO or device path blocks the CGI process
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-123776                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-123776

   Distribution:  RRD-CGI-Image
       Versions:  through 0.01
       MetaCPAN:  https://metacpan.org/dist/RRD-CGI-Image


RRD::CGI::Image versions through 0.01 for Perl pass CGI query
parameters containting "tz" to tzset(), , so a FIFO or device path
blocks the CGI process

Description
-----------
RRD::CGI::Image versions through 0.01 for Perl pass CGI query
parameters containting "tz" to tzset(), , so a FIFO or device path
blocks the CGI process.

The normalize_params method sends any query key matching /tz/i to tz(),
which sets $ENV{TZ} to that value, with no validation. It then calls
tzset(). glibc treats a TZ value starting with / or : as a file path
and opens it, so a value naming a FIFO or a blocking device stalls the
process inside tzset().

Problem types
-------------
- CWE-1287 Improper Validation of Specified Type of Input

Solutions
---------
Apply the patch.

References
----------
https://rt.cpan.org/Ticket/Display.html?id=182627
https://man7.org/linux/man-pages/man3/tzset.3.html
https://security.metacpan.org/patches/R/RRD-CGI-Image/0.01/CVE-2026-123776-r1.patch

