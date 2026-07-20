X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/20/12
Message-ID: <7aa40a59-3e34-4f4c-b4c8-03966b181fbb@cpansec.org>
Date: Mon, 20 Jul 2026 18:56:51 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-64193: Net::DNS versions through 1.55 for Perl allow remote execution injection via EDNS EXTENDED ERROR
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-64193                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-64193
   Distribution:  Net-DNS
       Versions:  through 1.55

       MetaCPAN:  https://metacpan.org/dist/Net-DNS
       VCS Repo:  https://www.net-dns.org/svn/net-dns/


Net::DNS versions through 1.55 for Perl allow remote execution
injection via EDNS EXTENDED ERROR

Description
-----------
Net::DNS versions through 1.55 for Perl allow remote execution
injection via EDNS EXTENDED ERROR.

Net::DNS::RR::OPT::EXTENDED_ERROR::_decompose parses the EXTRA-TEXT
field of an EDNS EXTENDED-ERROR option (RFC 8914) by tokenising the raw
bytes and passing the result to Perl's eval. There is some escaping
done for $ and @, but not for backticks. This can be exploited for
command execution if $pkt->edns->option('EXTENDED-ERROR') is called in
array context, for example with a payload of {0:`"<command>"`} in
EXTRA-TEXT.

Problem types
-------------
- CWE-95 Improper Neutralization of Directives in Dynamically Evaluated
   Code ('Eval Injection')

Solutions
---------
Upgrade to version 1.56 or later.


References
----------
https://www.net-dns.org/blog/#release-candidate-for-netdns-1.56
https://rt.cpan.org/Ticket/Display.html?id=179945
https://metacpan.org/release/NLNETLABS/Net-DNS-1.55_01/changes

Timeline
--------
- 2026-07-10: Issue reported publicly via RT.
- 2026-07-10: Version 1.55_01 (release candidate for version 1.56)
   published on CPAN.
- 2026-07-18: Version 1.56 published on CPAN.

Credits
-------
Steffen Ullrich, reporter



