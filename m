X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/10/16
Message-ID: <cf17b412-4153-44e3-ba7b-88444d6cd2cc@cpansec.org>
Date: Tue, 10 Nov 2026 17:37:05 +0000
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-125729: Plack::Middleware::CSP versions before 0.03 for Perl send the Content Security Policy under the wrong header name, so browsers never enforce it
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-125729                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-125729

   Distribution:  Plack-Middleware-CSP
       Versions:  before 0.03
       MetaCPAN:  https://metacpan.org/dist/Plack-Middleware-CSP
       VCS Repo:  https://github.com/pangyre/Plack-Middleware-CSP/


Plack::Middleware::CSP versions before 0.03 for Perl send the Content
Security Policy under the wrong header name, so browsers never enforce
it

Description
-----------
Plack::Middleware::CSP versions before 0.03 for Perl send the Content
Security Policy under the wrong header name, so browsers never enforce
it.

The call method sets the policy in a response header named
"content-security-protocol" instead of "Content-Security-Policy".
Browsers ignore that header.

Any cross-site scripting flaw in the wrapped application can run
scripts the policy was meant to block.

Problem types
-------------
- CWE-684 Incorrect Provision of Specified Functionality

Solutions
---------
Upgrade to Plack-Middleware-CSP 0.03 or later.

References
----------
https://github.com/pangyre/Plack-Middleware-CSP/issues/1
https://metacpan.org/release/ASHLEY/Plack-Middleware-CSP-0.03/source/CHANGES

