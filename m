X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/02/1
Message-ID: <d9fc8ea14ba834a82b8d1d4d39f90a5a@cpansec.org>
Date: Tue, 01 Sep 2026 20:23:38 -0300
From: Timothy Legge <timlegge@...nsec.org>
To: Cve Announce <cve-announce@...urity.metacpan.org>, Oss Security <oss-security@...ts.openwall.com>
Subject: CVE-2026-81928: Net::DNS versions before 1.57 for Perl allow memory exhaustion via unbounded recursion in sig_data when re-encoding a message with a misplaced TSIG record
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-81928                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-81928
   Distribution:  Net-DNS
       Versions:  before 1.57

       MetaCPAN:  https://metacpan.org/dist/Net-DNS
       VCS Repo:  https://www.net-dns.org/svn/net-dns/


Net::DNS versions before 1.57 for Perl allow memory exhaustion via
unbounded recursion in sig_data when re-encoding a message with a
misplaced TSIG record

Description
-----------
Net::DNS versions before 1.57 for Perl allow memory exhaustion via
unbounded recursion in sig_data when re-encoding a message with a
misplaced TSIG record.

sig_data signs a message by re-encoding it, and removes TSIG records
only from the additional section. A TSIG decoded into the answer or
authority section survives that step and is signed again, so encoding
re-enters sig_data with no termination condition. Decoding does not
reject such a message: a TSIG that is not the last record on the wire
raises "misplaced or corrupt TSIG", but the error is caught, reported
as a warning, and the record is left in the packet. RFC 8945 section
5.2 requires the message to be dropped.

The recursion is reached only when the decoded TSIG carries an empty
MAC, since a MAC recovered from the wire short-circuits the signing
step. It is reached only from code that re-encodes a message it
decoded, such as a forwarder or a proxy. A decoded message that is
never re-encoded is unaffected. Message direction does not matter: a
query reaches the same path as a response.

Each cycle re-encodes the whole message, so fewer than 100 bytes on the
wire exhaust available memory and terminate the process.

Problem types
-------------
- CWE-674 Uncontrolled Recursion

Workarounds
-----------
For deployments that are not able to upgrade to Net-DNS 1.57, reject a
decoded message before re-encoding it if a TSIG record appears anywhere
but the final position of the additional section.

Solutions
---------
Upgrade to Net-DNS 1.57 or later.

References
----------
https://metacpan.org/release/NLNETLABS/Net-DNS-1.56/source/lib/Net/DNS/RR/TSIG.pm#L245-262
https://metacpan.org/release/NLNETLABS/Net-DNS-1.56/source/lib/Net/DNS/RR/TSIG.pm#L62-73
https://datatracker.ietf.org/doc/html/rfc8945#section-5.2
https://rt.cpan.org/Ticket/Display.html?id=181125
https://metacpan.org/release/NLNETLABS/Net-DNS-1.57/changes

Credits
-------
Naseeb Dangi and Xiang Li from AOSP Lab @ Nankai University, reporter

