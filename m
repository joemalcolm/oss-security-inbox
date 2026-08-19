X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/19/2
Message-ID: <965a7aa9-56e7-4505-a366-dcd85f505e2a@cpansec.org>
Date: Wed, 19 Aug 2026 08:22:58 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-72889: Net::OAuth versions before 0.33 for Perl allow the sender to choose the signature algorithm in verify
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-72889                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-72889
   Distribution:  Net-OAuth
       Versions:  before 0.33

       MetaCPAN:  https://metacpan.org/dist/Net-OAuth
       VCS Repo:  https://github.com/vurtdev/Net-OAuth


Net::OAuth versions before 0.33 for Perl allow the sender to choose the
signature algorithm in verify

Description
-----------
Net::OAuth versions before 0.33 for Perl allow the sender to choose the
signature algorithm in verify.

verify resolves the signature method class from the signature_method
parameter of the incoming message. signature_method is required on
every request, so the algorithm used to check a signature is chosen by
whoever sent it, and nothing lets the verifying party pin the method
instead. When a message names HMAC-SHA1 or HMAC-SHA256, the key is
derived from consumer_secret and token_secret rather than from the key
the provider deployed.

A provider deployed on RSA-SHA1 holds only the consumer public key, and
RFC 5849 does not use consumer_secret for that method, so the required
parameter is filled with a placeholder. A client that names HMAC-SHA1
instead has its signature checked against that placeholder, so a
guessable one is enough to forge requests for any consumer key and
token.

Problem types
-------------
- CWE-347 Improper Verification of Cryptographic Signature
- CWE-757 Selection of Less-Secure Algorithm During Negotiation
   ('Algorithm Downgrade')

Solutions
---------
Upgrade to Net-OAuth 0.33 or later.

References
----------
https://github.com/vurtdev/Net-OAuth/security/advisories/GHSA-c8rm-g5cm-4pf5
https://github.com/vurtdev/Net-OAuth/commit/c467adf45c8d77ac4b92ad78b3eebf949252ba7f.patch
https://metacpan.org/release/RRWO/Net-OAuth-0.33/changes
https://datatracker.ietf.org/doc/html/rfc5849#section-3.4.2
https://datatracker.ietf.org/doc/html/rfc5849#section-3.4.3



