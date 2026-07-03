X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/03/4
Message-ID: <cb0ac67c-662d-4384-91a8-d39dd6e97cdc@cpansec.org>
Date: Fri, 3 Jul 2026 13:57:05 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-56015: Net::IP::LPM versions through 1.10 for Perl allow a heap out-of-bounds read via an unbounded prefix length
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-56015                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-56015
   Distribution:  Net-IP-LPM
       Versions:  through 1.10

       MetaCPAN:  https://metacpan.org/dist/Net-IP-LPM


Net::IP::LPM versions through 1.10 for Perl allow a heap out-of-bounds
read via an unbounded prefix length

Description
-----------
Net::IP::LPM versions through 1.10 for Perl allow a heap out-of-bounds
read via an unbounded prefix length.

add() passes the prefix string to the trie builder addPrefixToTrie()
without checking it against the address width.

addPrefixToTrie() then walks the prefix buffer by prefix_length bits,
reading prefix[byte] for byte up to prefix_len/8, where prefix is the
4-byte (IPv4) or 16-byte (IPv6) packed address. A prefix length greater
than 32 for IPv4 or 128 for IPv6, for example add("1.2.3.4/255", $v) or
add("2001:db8::/255", $v), reads past the end of the packed address.

The out-of-bounds read happens during trie construction and is bounded:
the prefix length is stored as an unsigned char, so the bit walk reads
at most 32 bytes from the start of the packed address, a short distance
past the end of the 4-byte or 16-byte buffer. It is detectable under
AddressSanitizer, valgrind, or a hardened allocator, where it can abort
the process. Lookups and dump() format only the valid address width, so
the out-of-bounds bytes are not exposed through the module's API.

Problem types
-------------
- CWE-125 Out-of-bounds Read

Workarounds
-----------
Apply the patch.

Otherwise, reject prefix lengths greater than 32 (IPv4) or 128 (IPv6)
before passing them to add().


References
----------
https://rt.cpan.org/Ticket/Display.html?id=179856
https://security.metacpan.org/patches/N/Net-IP-LPM/1.10/CVE-2026-56015-r2.patch



