X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/09/1
Message-ID: <3ac7a0973c8f6b495f1caa782db6340b@cpansec.org>
Date: Sat, 08 Aug 2026 22:27:15 -0300
From: Timothy Legge <timlegge@...nsec.org>
To: Cve Announce <cve-announce@...urity.metacpan.org>, Oss Security <oss-security@...ts.openwall.com>
Subject: CVE-2026-17510: Crypt::OpenSSL::PKCS12 versions before 1.98 for Perl allow a NULL pointer dereference in print_attribute via a zero length BMPSTRING attribute
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-17510                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-17510
   Distribution:  Crypt-OpenSSL-PKCS12
       Versions:  before 1.98

       MetaCPAN:  https://metacpan.org/dist/Crypt-OpenSSL-PKCS12
       VCS Repo:  https://github.com/dsully/perl-crypt-openssl-pkcs12


Crypt::OpenSSL::PKCS12 versions before 1.98 for Perl allow a NULL
pointer dereference in print_attribute via a zero length BMPSTRING
attribute

Description
-----------
Crypt::OpenSSL::PKCS12 versions before 1.98 for Perl allow a NULL
pointer dereference in print_attribute via a zero length BMPSTRING
attribute.

print_attribute() sizes the destination buffer for a BMPSTRING
attribute from its declared byte length with `Renew(*attribute, length,
char)`. A zero length attribute makes that a zero size reallocation,
which Perl implements as a free returning NULL, so the buffer pointer
becomes NULL, the following `strncpy` copies nothing, and the caller
dereferences NULL in the `strlen()` it passes to `newSVpvn()`. A zero
length BMPSTRING is even length, so the ASN.1 decoder accepts it and
the value reaches this code. The UTF8STRING, OCTET STRING and BIT
STRING arms size on `length + 1` or `length * 4 + 1` and are
unaffected.

Any caller that passes an untrusted PKCS#12 file to info_as_hash() can
crash the process. info() prints attribute values directly without
sizing a buffer and is unaffected.

Problem types
-------------
- CWE-476 NULL Pointer Dereference

Workarounds
-----------
For deployments that cannot upgrade to 1.98, ensure that PKCS#12 files
passed to info_as_hash() come from trusted sources.


Solutions
---------
Upgrade to Crypt::OpenSSL::PKCS12 1.98 or later, which sizes the buffer
on the decoded string length plus one and writes an explicit
terminator.


References
----------
https://metacpan.org/release/JONASBN/Crypt-OpenSSL-PKCS12-1.98/source/Changes.md
https://github.com/dsully/perl-crypt-openssl-pkcs12/commit/6cb282d8d8e8ded4859551cd2d3cfa7c6028ce48.patch

