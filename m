X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/22/2
Message-Id: <26DB9C28-A3F4-4201-9B01-830C7D79503D@stig.io>
Date: Tue, 22 Sep 2026 02:55:28 +0200
From: Stig Palmquist <stig@...g.io>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-93710: Dancer2 versions from 2.0.0 before 2.2.0 for Perl dispatch a route that a dying hook refused when the exception handler halts the response in compile_hooks
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-93710                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-93710

  Distribution:  Dancer2
      Versions:  from 2.0.0 before 2.2.0
      MetaCPAN:  https://metacpan.org/dist/Dancer2
      VCS Repo:  https://github.com/PerlDancer/Dancer2


Dancer2 versions from 2.0.0 before 2.2.0 for Perl dispatch a route that
a dying hook refused when the exception handler halts the response in
compile_hooks

Description
-----------
Dancer2 versions from 2.0.0 before 2.2.0 for Perl dispatch a route that
a dying hook refused when the exception handler halts the response in
compile_hooks.

A hook that dies fires core.app.hook_exception, then calls cleanup
unless the failing hook is the exception handler. A handler that halts
does not stop that cleanup, which discards the request, response and
session the dispatcher has yet to read, so the refused route runs.

The handler has to halt the response object by calling its halt method
or setting is_halted: the halt keyword unwinds through with_return
before cleanup runs.

A check in a before hook is not enforced: the caller gets the refusal,
while the route body runs and its writes land.

Problem types
-------------
- CWE-460 Improper Cleanup on Thrown Exception

Solutions
---------
Upgrade to Dancer2 2.2.0 or later.

References
----------
https://github.com/PerlDancer/Dancer2/security/advisories/GHSA-v527-r4px-7vx7
https://github.com/PerlDancer/Dancer2/commit/8fd31a32798f9aa25e4fccbd6c7cb9dd3a0c1029.patch
https://metacpan.org/release/CROMEDOME/Dancer2-2.2.0/changes

Timeline
--------
- 2026-09-16: Version 2.2.0 released with fix.


