X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/21/29
Message-ID: <38cd471d-f5f7-4180-87c0-81ec6aef83a0@cpansec.org>
Date: Wed, 21 Oct 2026 22:24:59 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-94423: Net::LibSSH versions before 0.004 for Perl authenticate to an unverified server because connect never checks the host key against known_hosts
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-94423                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-94423

   Distribution:  Net-LibSSH
       Versions:  before 0.004
       MetaCPAN: https://metacpan.org/dist/Net-LibSSH
       VCS Repo: https://github.com/Getty/p5-net-libssh


Net::LibSSH versions before 0.004 for Perl authenticate to an
unverified server because connect never checks the host key against
known_hosts

Description
-----------
Net::LibSSH versions before 0.004 for Perl authenticate to an
unverified server because connect never checks the host key against
known_hosts.

connect reports success as soon as ssh_connect returns SSH_OK. libssh
leaves the known-hosts check to the application, and this binding never
makes it, so the strict_hostkeycheck and knownhosts options are set on
the session and then decide nothing.

Password, agent and public-key authentication, channel and SFTP
operations all run on a session whose peer was never identified, so an
attacker who can redirect the connection receives the password when
password authentication is used, and commands and data sent over the
session.

Problem types
-------------
- CWE-322 Key Exchange without Entity Authentication

Solutions
---------
Upgrade to Net-LibSSH 0.004 or later.

References
----------
https://metacpan.org/release/GETTY/Net-LibSSH-0.004/changes
https://github.com/Getty/p5-net-libssh/commit/29f509aacddb4b282ac9eb716d5ab326686d09a4.patch

Credits
-------
James Klein, finder

