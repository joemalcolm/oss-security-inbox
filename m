X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/23/27
Message-ID: <dba32d7a-4308-45e3-a155-fba6f523c6ba@cpansec.org>
Date: Fri, 23 Oct 2026 21:08:37 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-113877: HTTP::Headers::ActionPack versions before 0.10 for Perl allow CPU exhaustion via Accept-Language ranges matched as regular expressions
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-113877                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-113877

   Distribution:  HTTP-Headers-ActionPack
       Versions:  before 0.10
       MetaCPAN: https://metacpan.org/dist/HTTP-Headers-ActionPack
       VCS Repo: https://github.com/robrwo/perl-HTTP-Headers-ActionPack/


HTTP::Headers::ActionPack versions before 0.10 for Perl allow CPU
exhaustion via Accept-Language ranges matched as regular expressions

Description
-----------
HTTP::Headers::ActionPack versions before 0.10 for Perl allow CPU
exhaustion via Accept-Language ranges matched as regular expressions.

_language_match interpolates each Accept-Language range into the
pattern `/^$range\-/i` without escaping it, so regular expression
syntax in the header reaches the regex engine. A 12-byte range such as
`(a?|b?){26}z` backtracks for seconds, and each increment of the
quantifier doubles the time. An invalid range such as `(` fails to
compile.

A remote attacker can exhaust CPU, or make choose_language die, in any
application that passes an untrusted Accept-Language header to it.

Problem types
-------------
- CWE-624 Executable Regular Expression Error

Solutions
---------
Upgrade to HTTP-Headers-ActionPack 0.10 or later.

References
----------
https://metacpan.org/release/RRWO/HTTP-Headers-ActionPack-0.10/changes
https://github.com/robrwo/perl-HTTP-Headers-ActionPack/commit/77f0deb23f3de872c2e64befd72750e0f0f4bec9.patch

