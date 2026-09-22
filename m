X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/22/3
Message-Id: <DA559A3B-1842-45E7-8421-E43A1EDF004C@stig.io>
Date: Tue, 22 Sep 2026 02:56:18 +0200
From: Stig Palmquist <stig@...g.io>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-93711: Dancer2 versions before 2.2.0 for Perl do not strip CR and LF from response header names in headers_to_array
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-93711                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-93711

  Distribution:  Dancer2
      Versions:  before 2.2.0
      MetaCPAN:  https://metacpan.org/dist/Dancer2
      VCS Repo:  https://github.com/PerlDancer/Dancer2


Dancer2 versions before 2.2.0 for Perl do not strip CR and LF from
response header names in headers_to_array

Description
-----------
Dancer2 versions before 2.2.0 for Perl do not strip CR and LF from
response header names in headers_to_array.

The routine removes CR and LF from each header value but not from the
name. A name carrying them therefore reaches the PSGI server intact. A
server that does not validate keys writes it to the wire, so the bytes
after the CRLF arrive as their own header line.

The application has to derive the header name from request data, not
just the value.

An attacker who controls that data adds their own headers and splits
the response.

Problem types
-------------
- CWE-113 Improper Neutralization of CRLF Sequences in HTTP Headers
  ('HTTP Request/Response Splitting')

Solutions
---------
Upgrade to Dancer2 2.2.0 or later.

References
----------
https://github.com/PerlDancer/Dancer2/issues/1822
https://github.com/PerlDancer/Dancer2/commit/ff89ac12af7b8899812a79e9924dfea7a5d9833b.patch
https://metacpan.org/release/CROMEDOME/Dancer2-2.2.0/changes

Timeline
--------
- 2026-09-16: Version 2.2.0 released with fix.


