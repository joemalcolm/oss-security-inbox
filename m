X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/22/5
Message-ID: <054f48dc6a09e6cd419110aeb7959814@cpansec.org>
Date: Sat, 22 Aug 2026 10:37:48 -0300
From: Timothy Legge <timlegge@...nsec.org>
To: Cve Announce <cve-announce@...urity.metacpan.org>, Oss Security <oss-security@...ts.openwall.com>
Subject: CVE-2026-75870: Punk versions before 0.18 for Perl allow session cookie forgery via an empty default HMAC key when a session is declared without a secret
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-75870                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-75870
   Distribution:  Punk
       Versions:  before 0.18

       MetaCPAN:  https://metacpan.org/dist/Punk


Punk versions before 0.18 for Perl allow session cookie forgery via an
empty default HMAC key when a session is declared without a secret

Description
-----------
Punk versions before 0.18 for Perl allow session cookie forgery via an
empty default HMAC key when a session is declared without a secret.

The session keyword freezes its options onto the application as given:
it does not require a secret, warn, or refuse to start when one is
absent. The cookie read and the write-back both default that key to the
empty string, so a declaration with no secret option, or with an
undefined or empty one, signs and verifies with a zero-length
HMAC-SHA256 key.

An attacker who knows the cookie format can then mint one offline
carrying any contents the session holds, such as a user identifier or a
role. Nothing marks the misconfiguration at runtime: cookies are well
formed and sessions round-trip as expected.

Problem types
-------------
- CWE-1394 Use of Default Cryptographic Key

Workarounds
-----------
For deployments that cannot upgrade to 0.18, declare the session
keyword with a non-empty secret. The secret keyword fails closed, so
sourcing the key through it turns a missing configuration path or an
unset environment variable into a startup error.

Solutions
---------
Upgrade to Punk 0.18 or later.

References
----------
https://metacpan.org/release/LNATION/Punk-0.17/source/include/punk/punk_session.h
https://metacpan.org/release/LNATION/Punk-0.17/view/lib/Punk.pm
https://metacpan.org/release/LNATION/Punk-0.18/source/Changes

