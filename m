X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/20/36
Message-Id: <92E98401-D298-4ED2-A742-82E62AE9C7AF@stig.io>
Date: Tue, 20 Oct 2026 23:10:23 +0200
From: Stig Palmquist <stig@...g.io>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-113812: Mozilla::CA versions before 20261020 for Perl provide a CA certificate bundle containing a root linked to compromised intermediates
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-113812                                      CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-113812

  Distribution:  Mozilla-CA
      Versions:  before 20261020
      MetaCPAN:  https://metacpan.org/dist/Mozilla-CA
      VCS Repo:  https://github.com/libwww-perl/Mozilla-CA


Mozilla::CA versions before 20261020 for Perl provide a CA certificate
bundle containing a root linked to compromised intermediates

Description
-----------
Mozilla::CA versions before 20261020 for Perl provide a CA certificate
bundle containing a root linked to compromised intermediates.

The bundle includes "emSign ECC Root CA - G3", which provides a trust
path for intermediate certificates whose private keys are publicly
available.

An attacker able to intercept or redirect client traffic may use these
keys to impersonate a TLS server.

LWP, HTTP::Tiny and other clients normally use IO::Socket::SSL, which
looks for CA certificates in OpenSSL's default locations before falling
back to Mozilla::CA.

Configuration and environment variables can override this selection.
Users should check which CA store their client uses. If it uses the
system store, check for and install the operating system vendor's
updates for this incident.

Problem types
-------------
- CWE-295 Improper Certificate Validation

Solutions
---------
Upgrade to Mozilla-CA 20261020 or later.

References
----------
https://www.openwall.com/lists/oss-security/2026/10/20/1
https://metacpan.org/release/LWP/Mozilla-CA-20261020/changes
https://emudhra.we-have-a-problem.com/
https://bugzilla.mozilla.org/show_bug.cgi?id=2083449


