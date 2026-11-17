X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/17/33
Message-ID: <7d77a5e2-2121-4a86-a684-c9c32734c0fe@cpansec.org>
Date: Tue, 17 Nov 2026 23:42:28 +0000
From: Robert Rothenberg <rrwo@...nsec.org>
To: oss-security@...ts.openwall.com
Subject: IO-Socket-SSL versions through 2.099 for Perl (2 CVEs)
Content-Type: text/plain; charset=utf-8

CVE-2026-129891
   IO::Socket::SSL::PublicSuffix versions through 2.099 for Perl let an
   on-path attacker choose the installed public suffix list because
   update_self_from_url fetches it over cleartext HTTP with no integrity
   check

CVE-2026-129892
   IO::Socket::SSL::PublicSuffix versions through 2.099 for Perl allow
   code injection via a fetched list line that closes the built-in data
   heredoc when update_self_from_url rewrites the module's source


========================================================================
CVE-2026-129891                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-129891

   Distribution:  IO-Socket-SSL
       Versions:  through 2.099
       MetaCPAN:  https://metacpan.org/dist/IO-Socket-SSL
       VCS Repo:  https://github.com/noxxi/p5-io-socket-ssl


IO::Socket::SSL::PublicSuffix versions through 2.099 for Perl let an
on-path attacker choose the installed public suffix list because
update_self_from_url fetches it over cleartext HTTP with no integrity
check

Description
-----------
IO::Socket::SSL::PublicSuffix versions through 2.099 for Perl let an
on-path attacker choose the installed public suffix list because
update_self_from_url fetches it over cleartext HTTP with no integrity
check.

Called with no argument, as the module's documentation shows, the
updater fetches the list from the `http://` address in the URL constant
and checks only that the request succeeded, with no signature or digest
over the response. The lines that come back are written into the
module's own source file as the built-in list.

An attacker on the network path when the updater runs chooses the
suffix boundary the module reports to every caller on the host, and
that answer persists in the installed module until it is reinstalled.
Dropping one rule makes the hostname check in IO::Socket::SSL accept a
wildcard certificate that spans the whole public suffix that rule
named.

Problem types
-------------
- CWE-494 Download of Code Without Integrity Check

Workarounds
-----------
Until a fixed release is available, pass an explicit https URL to
update_self_from_url instead of calling it with no argument.

Solutions
---------
Upgrade to a future IO-Socket-SSL release, or apply the upstream patch.

References
----------
https://metacpan.org/release/SULLR/IO-Socket-SSL-2.099/source/lib/IO/Socket/SSL/PublicSuffix.pm
https://github.com/noxxi/p5-io-socket-ssl/commit/6e756466cd7005bcdb2e0e18eb140f33a2355c78.patch


========================================================================
CVE-2026-129892                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-129892

   Distribution:  IO-Socket-SSL
       Versions:  through 2.099
       MetaCPAN:  https://metacpan.org/dist/IO-Socket-SSL
       VCS Repo:  https://github.com/noxxi/p5-io-socket-ssl


IO::Socket::SSL::PublicSuffix versions through 2.099 for Perl allow
code injection via a fetched list line that closes the built-in data
heredoc when update_self_from_url rewrites the module's source

Description
-----------
IO::Socket::SSL::PublicSuffix versions through 2.099 for Perl allow
code injection via a fetched list line that closes the built-in data
heredoc when update_self_from_url rewrites the module's source.

The rewrite copies the module's source down to the built-in list's
heredoc and appends each fetched line below it. Nothing checks that a
line looks like a domain. A line that is not a comment loses only what
follows a `//` and its trailing whitespace, so a line reading
END_BUILTIN_DATA is appended as it stands and ends the data block in
the rewritten file. Every fetched line after it is Perl.

Arbitrary Perl runs in every process that loads IO::Socket::SSL, which
loads this module unconditionally, until the file is reinstalled. The
attacker must control the fetched list, through the cleartext default
URL or a caller-supplied one, and the updater must run with write
access to the installed module.

Problem types
-------------
- CWE-94 Improper Control of Generation of Code

Workarounds
-----------
Until a fixed release is available, do not run update_self_from_url.

Solutions
---------
Upgrade to a future IO-Socket-SSL release, or apply the upstream patch.

References
----------
https://metacpan.org/release/SULLR/IO-Socket-SSL-2.099/source/lib/IO/Socket/SSL/PublicSuffix.pm
https://github.com/noxxi/p5-io-socket-ssl/commit/6e756466cd7005bcdb2e0e18eb140f33a2355c78.patch

