X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/23/4
Message-ID: <a6b8de32-16fa-49af-b167-b711a2bb9e99@cpansec.org>
Date: Sun, 23 Aug 2026 20:19:04 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-19565: Apache::AppSamurai::Util versions through 1.01 for Perl generate predictable session authentication keys from the clock and process id in CreateSessionAuthKey
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-19565                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-19565
   Distribution:  Apache-AppSamurai
       Versions:  through 1.01

       MetaCPAN:  https://metacpan.org/dist/Apache-AppSamurai


Apache::AppSamurai::Util versions through 1.01 for Perl generate
predictable session authentication keys from the clock and process id
in CreateSessionAuthKey

Description
-----------
Apache::AppSamurai::Util versions through 1.01 for Perl generate
predictable session authentication keys from the clock and process id
in CreateSessionAuthKey.

CreateSessionAuthKey runs five rounds of SHA-256, each over a fresh
Time::HiRes reading formatted to six decimal places, the running
digest, and the process id. CreateSession calls it with an empty key
source on every login, and the optional Keysource directive is the only
route to the other branch. The result is 64 hex characters. The
microsecond field of the first reading takes one of a million values,
the later readings follow it within microseconds, and the process id is
drawn from a small range.

The key is returned to the browser as the session cookie, and is
combined with the configured server key to compute the session id and
to encrypt the stored session data. An attacker who knows the second in
which a session was created and the process id of the worker that
created it can enumerate candidate keys and recover the victim's
cookie, bypassing authentication for the protected resources. Each
candidate has to be tried against the server, which validates the
cookie with a key the attacker does not hold.

Problem types
-------------
- CWE-341 Predictable from Observable State

Impacts
-------
- CAPEC-59 Session Credential Falsification through Prediction
- CAPEC-115 Authentication Bypass

Workarounds
-----------
Apache::AppSamurai has not been released since 2008.

Users should migrate to an alternative solution.

References
----------
https://metacpan.org/release/PAULDOOM/Apache-AppSamurai-1.01/source/lib/Apache/AppSamurai/Util.pm#L106-135
https://metacpan.org/release/PAULDOOM/Apache-AppSamurai-1.01/source/lib/Apache/AppSamurai.pm#L1446-1533



