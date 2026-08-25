X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/25/7
Message-ID: <885015e228d3315a9086438952656fbc@cpansec.org>
Date: Tue, 25 Aug 2026 18:24:59 -0300
From: Timothy Legge <timlegge@...nsec.org>
To: Cve Announce <cve-announce@...urity.metacpan.org>, Oss Security <oss-security@...ts.openwall.com>
Subject: CVE-2026-78655: Punk::Plugin::TOTP versions before 0.05 for Perl allow the second-factor attempt limit to be reset by replaying an earlier session cookie because the challenge route counts failures in the session
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-78655                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-78655
   Distribution:  Punk-TOTP
       Versions:  before 0.05

       MetaCPAN:  https://metacpan.org/dist/Punk-TOTP


Punk::Plugin::TOTP versions before 0.05 for Perl allow the
second-factor attempt limit to be reset by replaying an earlier session
cookie because the challenge route counts failures in the session

Description
-----------
Punk::Plugin::TOTP versions before 0.05 for Perl allow the
second-factor attempt limit to be reset by replaying an earlier session
cookie because the challenge route counts failures in the session.

The POST handler on challenge_path keeps the failure count as tries
inside the totp_pending record in the session, raising it on each
rejected code and deleting the pending record once it reaches attempts,
five by default. Punk::Session carries the session in a signed cookie
unless the application declares a store, and keeps no server-side
record, so an earlier value of the same session stays valid until the
expiry stamped inside it. A client that saves the cookie before its
failed attempts and presents it again gets the pending record back with
its counter, and the limit never fires. The replayed record is accepted
while its own expiry, pending_ttl seconds from the challenge and 300 by
default, has not passed.

Sessions declared with a store are not affected: the pending record and
its counter then live server-side.

The attempt limit does not bound guessing of the second factor, which
is left to the per-address rate limit the plugin registers on the same
path, 30 requests per 60 seconds.

Problem types
-------------
- CWE-307 Improper Restriction of Excessive Authentication Attempts
- CWE-642 External Control of Critical State Data

Workarounds
-----------
For deployments that cannot upgrade to 0.05, declare the session
keyword with a store, which needs a Punk::Cache backend shared between
workers. The cookie then carries only an opaque id and the counter is
out of the client's reach.

Solutions
---------
Upgrade to Punk-TOTP 0.05 or later, and add the two columns the count
is kept in to the user table (totp_failed and totp_failed_at by
default, named by fields).

References
----------
https://metacpan.org/release/LNATION/Punk-TOTP-0.04/source/include/ptotp/ptotp_plugin.h
https://metacpan.org/release/LNATION/Punk-TOTP-0.04/view/lib/Punk/Plugin/TOTP.pm
https://metacpan.org/release/LNATION/Punk-0.32/view/lib/Punk/Session.pm
https://metacpan.org/release/LNATION/Punk-TOTP-0.05/source/Changes
