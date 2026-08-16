X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/16/4
Message-ID: <f4262b7b-4488-4ad1-867a-c965f2bc3cfb@cpansec.org>
Date: Sun, 16 Aug 2026 14:52:26 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-72888: Net::OAuth versions before 0.32 for Perl allow memory exhaustion via unbounded caching of failed module loads in smart_require
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-72888                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-72888
   Distribution:  Net-OAuth
       Versions:  before 0.32

       MetaCPAN:  https://metacpan.org/dist/Net-OAuth
       VCS Repo:  https://github.com/vurtdev/Net-OAuth


Net::OAuth versions before 0.32 for Perl allow memory exhaustion via
unbounded caching of failed module loads in smart_require

Description
-----------
Net::OAuth versions before 0.32 for Perl allow memory exhaustion via
unbounded caching of failed module loads in smart_require.

smart_require stores results in a process-global hash with no bound and
no eviction, and keeps an entry for every class name it is asked about,
including names that failed to load, because the return value of the
failed eval is stored before the error is checked. The key comes off
the wire on the server side: _signature_method_class builds the class
name from the signature_method parameter of the incoming message, and
verify resolves it before any signature is checked.

A remote client chooses both how many entries are created and how long
each key is. In a persistent server the hash grows for the life of the
worker process until it exhausts memory. Header size limits bound the
key length on the Authorization header path, but not on a POST body.

Problem types
-------------
- CWE-770 Allocation of Resources Without Limits or Throttling

Solutions
---------
Upgrade to Net-OAuth 0.32 or later.

References
----------
https://github.com/vurtdev/Net-OAuth/security/advisories/GHSA-m2cv-cq5x-47ph
https://github.com/vurtdev/Net-OAuth/commit/ee713fc96263c70b3b9a5280612618b474576f8f.patch
https://metacpan.org/release/RRWO/Net-OAuth-0.32/changes



