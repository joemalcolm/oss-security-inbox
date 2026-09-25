X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/25/3
Message-ID: <ab859903e29126e86e916168d640afd2@cpansec.org>
Date: Thu, 24 Sep 2026 22:34:50 -0300
From: Timothy Legge <timlegge@...nsec.org>
To: Cve Announce <cve-announce@...urity.metacpan.org>, Oss Security <oss-security@...ts.openwall.com>
Subject: CVE-2026-95811: Lemonldap::NG::Handler versions from 2.0.0 before 2.16.10, from 2.17.0 before 2.21.6, from 2.22.0 before 2.23.4 for Perl allow an equivalent spelling of a path to bypass the locationRules that restrict it
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-95811                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-95811

   Distribution:  Lemonldap-NG-Handler
       Versions:  from 2.0.0 before 2.16.10
                  from 2.17.0 before 2.21.6
                  from 2.22.0 before 2.23.4
       MetaCPAN:  https://metacpan.org/dist/Lemonldap-NG-Handler
       VCS Repo:  https://gitlab.ow2.org/lemonldap-ng/lemonldap-ng


Lemonldap::NG::Handler versions from 2.0.0 before 2.16.10, from 2.17.0
before 2.21.6, from 2.22.0 before 2.23.4 for Perl allow an equivalent
spelling of a path to bypass the locationRules that restrict it

Description
-----------
Lemonldap::NG::Handler versions from 2.0.0 before 2.16.10, from 2.17.0
before 2.21.6, from 2.22.0 before 2.23.4 for Perl allow an equivalent
spelling of a path to bypass the locationRules that restrict it.

The handler matches each vhost's locationRules regular expressions
against REQUEST_URI, the raw request line, while the web server routes
on the path it has already percent-decoded and normalized. A request
that percent-encodes a character of the path, inserts dot segments, or
doubles a slash therefore reaches the protected resource under a URI
that no rule regexp matches, and the vhost's default rule decides
access. Deny rules, identity and group conditions, and unprotect and
skip rules are bypassed alike.

Only a vhost whose default rule is more permissive than its other rules
is affected. An authenticated user then reaches any URL a locationRules
regexp was meant to restrict, but gains no more than that default rule
already grants.

Problem types
-------------
- CWE-863 Incorrect Authorization
- CWE-180 Incorrect Behavior Order: Validate Before Canonicalize

Solutions
---------
Upgrade to Lemonldap-NG-Handler 2.16.10, 2.21.6 or 2.23.4 or later.
Only 2.23.4 is on CPAN; the 2.16.10 and 2.21.6 LTS releases are
available from https://lemonldap-ng.org/download.html.

References
----------
https://gitlab.ow2.org/lemonldap-ng/lemonldap-ng/-/issues/3723
https://gitlab.ow2.org/lemonldap-ng/lemonldap-ng/-/releases/v2.23.4
https://gitlab.ow2.org/lemonldap-ng/lemonldap-ng/-/releases/v2.21.6
https://gitlab.ow2.org/lemonldap-ng/lemonldap-ng/-/releases/v2.16.10
https://www.cve.org/CVERecord?id=CVE-2020-24660

Credits
-------
Deepseek agent, Linagora, finder
