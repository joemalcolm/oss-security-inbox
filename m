X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/12/2
Message-ID: <f9f5c5a9-81f6-4ad8-83aa-ad412d7b4bbb@cpansec.org>
Date: Wed, 12 Aug 2026 09:40:54 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-19566: Net::CIDR::Set versions before 0.23 for Perl allow memory exhaustion and malformed set ranges via unbounded IPv6 prefix lengths
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-19566                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-19566
   Distribution:  Net-CIDR-Set
       Versions:  before 0.23

       MetaCPAN:  https://metacpan.org/dist/Net-CIDR-Set
       VCS Repo:  https://github.com/robrwo/perl-Net-CIDR-Set


Net::CIDR::Set versions before 0.23 for Perl allow memory exhaustion
and malformed set ranges via unbounded IPv6 prefix lengths

Description
-----------
Net::CIDR::Set versions before 0.23 for Perl allow memory exhaustion
and malformed set ranges via unbounded IPv6 prefix lengths.

The _encode method accepts any prefix length matching `(0|[1-9][0-9]*)`
and passes it to _width2bits(), which builds the mask as `'1' x ($width
+ 8)`, one character per bit. The _inc() method then unpacks the packed
mask into a Perl array of one scalar per byte, so the prefix length
alone sets the allocation size: `::/100000000` builds a 100 MB string
and a 12.5 million element array. The value being tested is parsed, not
just the configured ranges: contains() builds a set from its argument,
and _guess_coder() tries the IPv4 coder and then the IPv6 coder, so an
IPv4-only set expands an oversized IPv6 prefix length before the mixed
address width check rejects it.

Any caller that passes untrusted input to contains() or add() can
exhaust process memory. A prefix length above 128 is also stored as a
range that does not match the requested block: 2001:db8::/129
stringifies back unchanged, contains() of its own base address returns
false, and removing it from a set drops the base address while the set
still prints as covering it.

Problem types
-------------
- CWE-1284 Improper Validation of Specified Quantity in Input
- CWE-789 Memory Allocation with Excessive Size Value

Workarounds
-----------
For deployments that cannot upgrade, apply the patch.


Solutions
---------
Upgrade to Net::CIDR::Set version 0.23 or later.


References
----------
https://github.com/robrwo/perl-Net-CIDR-Set/security/advisories/GHSA-grjr-r4x5-mx4p
https://github.com/robrwo/perl-Net-CIDR-Set/commit/e16b27db676fd1ca671fbb31208a22c1b1ba9724.patch
https://metacpan.org/release/RRWO/Net-CIDR-Set-0.23/changes
https://www.cve.org/CVERecord?id=CVE-2026-49942



