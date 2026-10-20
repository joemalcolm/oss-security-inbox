X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/20/39
Message-ID: <a002ed64-1b09-4779-8efa-4561d777e06d@cpansec.org>
Date: Tue, 20 Oct 2026 22:30:03 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-85783: Crypt::Age versions before 0.004 for Perl allow CPU exhaustion via an unbounded number of recipient stanzas, each costing an X25519 scalar multiplication in unwrap_file_key
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-85783                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-85783

   Distribution:  Crypt-Age
       Versions:  before 0.004
       MetaCPAN: https://metacpan.org/dist/Crypt-Age
       VCS Repo: https://github.com/Getty/p5-crypt-age


Crypt::Age versions before 0.004 for Perl allow CPU exhaustion via an
unbounded number of recipient stanzas, each costing an X25519 scalar
multiplication in unwrap_file_key

Description
-----------
Crypt::Age versions before 0.004 for Perl allow CPU exhaustion via an
unbounded number of recipient stanzas, each costing an X25519 scalar
multiplication in unwrap_file_key.

The header parser accepts any number of recipient stanzas, and
unwrap_file_key tries every identity against every X25519 stanza. Each
attempt runs a scalar multiplication, an HKDF and a ChaCha20-Poly1305
open. The header MAC cannot be checked first, because its key comes
from the file key, which only a successful unwrap produces.

Each stanza is 98 bytes of attacker-chosen header and buys one scalar
multiplication per identity held, and the file is rejected only after
every one of them has run. A caller reaches this through decrypt,
decrypt_file or decrypt_filehandle whenever it decrypts a file it did
not write.

Problem types
-------------
- CWE-770 Allocation of Resources Without Limits or Throttling
- CWE-405 Asymmetric Resource Consumption (Amplification)

Solutions
---------
Upgrade to Crypt-Age 0.004 or later.

References
----------
https://metacpan.org/release/GETTY/Crypt-Age-0.004/changes



