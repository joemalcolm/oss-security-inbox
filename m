X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/20/13
Message-ID: <5d5d51df-b111-447a-8f68-c6ac948fee4f@cpansec.org>
Date: Mon, 20 Jul 2026 18:56:09 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-64194: Net::DNS versions through 1.55 for Perl allow Denial of Service via deep DNS compression pointer chains
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-64194                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-64194
   Distribution:  Net-DNS
       Versions:  through 1.55

       MetaCPAN:  https://metacpan.org/dist/Net-DNS
       VCS Repo:  https://www.net-dns.org/svn/net-dns/


Net::DNS versions through 1.55 for Perl allow Denial of Service via
deep DNS compression pointer chains

Description
-----------
Net::DNS versions through 1.55 for Perl allow Denial of Service via
deep DNS compression pointer chains.

Net::DNS::DomainName::decode follows RFC 1035 compression pointers by
recursing into itself with no depth limit. It is possible to construct
a name which saturates the call stack (at least with larger TCP
responses), leading to a potential Denial of Service.

The guard `$link < $offset` prevents forward and circular chains, but
still allows arbitrarily long backward chains. The per-offset cache
(`$cache`) is populated at the start of each call and short-circuits
only re-traverses of the same offset - the initial descent through a
fresh chain still recurses at full depth.

A crafted packet can chain two-byte compression pointers so that each
one points two bytes earlier than the previous, producing a chain
length of `offset / 2`. For the 14-bit pointer field (max offset 16383)
this gives up to ~8191 recursive frames. For a TCP DNS message the
limit is the 16-bit length field (~32767 frames). Perl's default C
stack handles only a few thousand frames; beyond that the process
receives SIGSEGV or similar, which is a denial-of-service for any
application parsing untrusted DNS data.

The vulnerability is triggered by `Net::DNS::Packet->new(\$wire)` i.e.
any point where the library decodes a DNS message from the network.

Problem types
-------------
- CWE-674 Uncontrolled Recursion

Solutions
---------
Upgrade to version 1.56 or later.


References
----------
https://www.net-dns.org/blog/#release-candidate-for-netdns-1.56
https://rt.cpan.org/Ticket/Display.html?id=179946
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



