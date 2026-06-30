X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/30/3
Message-ID: <a7b5a43c-7f91-48d9-9cfc-7565995a14e2@cpansec.org>
Date: Tue, 30 Jun 2026 12:14:14 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-57079 through CVE-2026-57082: Multiple vulnerabilities in Net::BitTorrent versions through 2.0.1 for Perl
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-57079                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-57079
   Distribution:  Net-BitTorrent
       Versions:  through 2.0.1

       MetaCPAN:  https://metacpan.org/dist/Net-BitTorrent
       VCS Repo:  https://github.com/sanko/Net-BitTorrent.pm


Net::BitTorrent versions through 2.0.1 for Perl write files outside the
download directory via path traversal in peer-supplied metadata


References
----------
https://github.com/sanko/Net-BitTorrent.pm/security/advisories/GHSA-5wc6-r65f-62rr

========================================================================
CVE-2026-57080                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-57080
   Distribution:  Net-BitTorrent
       Versions:  through 2.0.1

       MetaCPAN:  https://metacpan.org/dist/Net-BitTorrent
       VCS Repo:  https://github.com/sanko/Net-BitTorrent.pm


Net::BitTorrent versions through 2.0.1 for Perl allow remote memory
exhaustion via an uncapped peer-wire message-length prefix


References
----------
https://github.com/sanko/Net-BitTorrent.pm/security/advisories/GHSA-7jr6-2jf4-6qc4


========================================================================
CVE-2026-57081                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-57081
   Distribution:  Net-BitTorrent
       Versions:  through 2.0.1

       MetaCPAN:  https://metacpan.org/dist/Net-BitTorrent
       VCS Repo:  https://github.com/sanko/Net-BitTorrent.pm


Net::BitTorrent versions through 2.0.1 for Perl allow remote memory
exhaustion via deeply nested bencoded input


References
----------
https://github.com/sanko/Net-BitTorrent.pm/security/advisories/GHSA-mv44-v82p-89xv


========================================================================
CVE-2026-57082                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-57082
   Distribution:  Net-BitTorrent
       Versions:  through 2.0.1

       MetaCPAN:  https://metacpan.org/dist/Net-BitTorrent
       VCS Repo:  https://github.com/sanko/Net-BitTorrent.pm


Net::BitTorrent versions through 2.0.1 for Perl generate the MSE
Diffie-Hellman private key with a non-cryptographic PRNG


References
----------
https://github.com/sanko/Net-BitTorrent.pm/security/advisories/GHSA-g444-x2c5-94hc



