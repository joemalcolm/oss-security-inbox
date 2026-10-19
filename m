X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/19/5
Message-ID: <75e05886-3d13-49c2-b90f-b68bb8c77f4b@cpansec.org>
Date: Mon, 19 Oct 2026 21:55:59 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-111946: Plack::Middleware::ETag versions from 0.04 before 0.06 for Perl disclose file inode numbers in the default ETag header
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-111946                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-111946

   Distribution:  Plack-Middleware-ETag
       Versions:  from 0.04 before 0.06
       MetaCPAN: https://metacpan.org/dist/Plack-Middleware-ETag
       VCS Repo: https://github.com/robrwo/perl-Plack-Middleware-ETag


Plack::Middleware::ETag versions from 0.04 before 0.06 for Perl
disclose file inode numbers in the default ETag header

Description
-----------
Plack::Middleware::ETag versions from 0.04 before 0.06 for Perl
disclose file inode numbers in the default ETag header.

When the response body is a filehandle and the file_etag option is not
set, the ETag is built from the file's inode number, modification time
and size. Clients receiving affected responses may use the disclosed
inode numbers to aid backend fingerprinting and correlation of files
served through different URLs.

Problem types
-------------
- CWE-497 Exposure of Sensitive System Information to an Unauthorized
   Control Sphere

Workarounds
-----------
For deployments that cannot upgrade to 0.06, where the file_etag option
is set, remove the use of "inode". If the file_etag option is not
specified, change it to ["mtime", "size"].

Solutions
---------
Upgrade to Plack-Middleware-ETag 0.06 or later. Where the file_etag
option is set, remove the use of "inode".

References
----------
https://github.com/robrwo/perl-Plack-Middleware-ETag/security/advisories/GHSA-943g-rgq5-6xc8
https://metacpan.org/release/RRWO/Plack-Middleware-ETag-0.06/changes
https://www.cve.org/CVERecord?id=CVE-2003-1418


