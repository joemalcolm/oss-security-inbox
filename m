X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/14/15
Message-ID: <aa2122cf-94f7-47b3-bec1-ddd015b874b8@cpansec.org>
Date: Sat, 14 Nov 2026 20:13:02 +0000
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2015-10149: Dancer versions before 1.3400 for Perl pass unvalidated session ids from the session cookie to the session engine
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2015-10149                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2015-10149

   Distribution:  Dancer
       Versions:  before 1.3400
       MetaCPAN: https://metacpan.org/dist/Dancer
       VCS Repo: https://github.com/PerlDancer/Dancer


Dancer versions before 1.3400 for Perl pass unvalidated session ids
from the session cookie to the session engine

Description
-----------
Dancer versions before 1.3400 for Perl pass unvalidated session ids
from the session cookie to the session engine.

read_session_id returns the cookie value as the session id without
checking its characters, and Dancer hands it to the session engine to
load the session.

A remote attacker may cause path traversal or injection in a session
engine that uses the id in a file path, cache command or query without
checking it.

Problem types
-------------
- CWE-1286 Improper Validation of Syntactic Correctness of Input

Solutions
---------
Upgrade to Dancer 1.3400 or later.

References
----------
https://github.com/PerlDancer/Dancer/commit/5a68fddbaef903fd3bd58517ce585cde986716e4.patch
https://github.com/PerlDancer/Dancer/issues/1117
https://github.com/PerlDancer/Dancer/issues/1118
https://github.com/PerlDancer/Dancer/pull/1172
https://metacpan.org/release/BIGPRESH/Dancer-1.3400/changes

Timeline
--------
- 2015-06-03: Session id validation vulnerability first reported in
   issue 1117.
- 2016-02-15: Dancer version 1.3300 adds session id validation.
- 2016-02-16: Dancer version 1.3301 reverts session id changes that
   broke Dancer::Session::Cookie.
- 2018-02-04: Pull request 1172 with session id validation created,
- 2018-05-20: Dancer version 1.3203 released with session id
   validation.
- 2018-06-15: Dancer version 1.3400 released that promotes previous
   trial releases to stable release.

