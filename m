X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/21/28
Message-ID: <ec530a86-60e0-4a43-a346-9e668e709cfb@cpansec.org>
Date: Wed, 21 Oct 2026 22:24:40 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-94140: Rex versions through 1.16.1 for Perl accept an unknown SSH host key for remote rsync transfers because sync hardcodes StrictHostKeyChecking=no
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-94140                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-94140

   Distribution:  Rex
       Versions:  through 1.16.1
       MetaCPAN: https://metacpan.org/dist/Rex
       VCS Repo: https://github.com/RexOps/Rex


Rex versions through 1.16.1 for Perl accept an unknown SSH host key for
remote rsync transfers because sync hardcodes StrictHostKeyChecking=no

Description
-----------
Rex versions through 1.16.1 for Perl accept an unknown SSH host key for
remote rsync transfers because sync hardcodes StrictHostKeyChecking=no.

Every remote branch of sync builds its ssh command with that option,
for password authentication, for private-key authentication and for the
fallback. The ssh options a caller sets through set_openssh_opt reach
the OpenSSH transport but not this command, so there is no
configuration that restores host key checking for the transfer.

An attacker who can redirect the connection before the real host key is
known presents their own and the transfer proceeds: under password
authentication sync sends the connection password to that server, an
upload writes the selected local files to it, and a download writes
what it returns to the local destination.

Problem types
-------------
- CWE-322 Key Exchange without Entity Authentication

Solutions
---------
No fixed CPAN release is currently available.

References
----------
https://metacpan.org/release/FERKI/Rex-1.16.1/source/lib/Rex/Commands/Rsync.pm

Credits
-------
James Klein, finder

