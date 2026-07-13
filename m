X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/13/8
Message-ID: <a8f864f872e832e706ca7f5846445b4a@cpansec.org>
Date: Mon, 13 Jul 2026 19:28:14 -0300
From: Timothy Legge <timlegge@...nsec.org>
To: Oss Security <oss-security@...ts.openwall.com>
Subject: 2 CVEs Crypt::OpenSSL::X509 versions before 2.1.3
Content-Type: text/plain; charset=utf-8

CVE-2026-58101: Crypt::OpenSSL::X509 versions before 2.1.3 for Perl 
allow denial of service via NULL pointer dereference
CVE-2026-58102: Crypt::OpenSSL::X509 versions before 2.1.3 for Perl 
allow a heap out-of-bounds read via a long certificate extension OID in 
hv_exts

========================================================================
CVE-2026-58101                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-58101
   Distribution:  Crypt-OpenSSL-X509
       Versions:  before 2.1.3

       MetaCPAN:  https://metacpan.org/dist/Crypt-OpenSSL-X509
       VCS Repo:  https://github.com/dsully/perl-crypt-openssl-x509


Crypt::OpenSSL::X509 versions before 2.1.3 for Perl allow denial of
service via NULL pointer dereference

Description
-----------
Crypt::OpenSSL::X509 versions before 2.1.3 for Perl allow denial of
service via NULL pointer dereference.

X509V3_EXT_d2i(ext) returns NULL when an extension's DER value fails to
parse. basicC, ia5string, and auth_att dereference its result without a
NULL check. keyid_data also dereferences akid->keyid, which is NULL for
an empty AKI SEQUENCE (DER 30 00) even when the parse succeeds.

A caller invoking an affected helper on an extension from an untrusted
certificate triggers a SIGSEGV that crashes the Perl process.

Problem types
-------------
- CWE-476 NULL Pointer Dereference

Solutions
---------
Upgrade to Crypt::OpenSSL::X509 2.1.3 or later, which NULL-checks each
X509V3_EXT_d2i result and the optional keyid field before
dereferencing.


References
----------
https://github.com/dsully/perl-crypt-openssl-x509/commit/4c1e2370556097c253ae27abe9e1097ea377fbd2.patch
https://metacpan.org/release/JONASBN/Crypt-OpenSSL-X509-2.1.3/source/Changes.md

========================================================================
CVE-2026-58102                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-58102
   Distribution:  Crypt-OpenSSL-X509
       Versions:  before 2.1.3

       MetaCPAN:  https://metacpan.org/dist/Crypt-OpenSSL-X509
       VCS Repo:  https://github.com/dsully/perl-crypt-openssl-x509


Crypt::OpenSSL::X509 versions before 2.1.3 for Perl allow a heap
out-of-bounds read via a long certificate extension OID in hv_exts

Description
-----------
Crypt::OpenSSL::X509 versions before 2.1.3 for Perl allow a heap
out-of-bounds read via a long certificate extension OID in hv_exts.

When building the extension hash (via extensions(),
extensions_by_long_name(), extensions_by_oid(), or
has_extension_oid()), the code passes OBJ_obj2txt()'s return value as
the hash-key length; because that value is the OID's full text length
rather than the bytes written to the fixed-size buffer (129 bytes), an
OID whose text is longer than the 129-byte buffer causes a read past
the allocation, exposing adjacent heap memory as the returned hash key.
extensions_by_name() uses the static shortname path and is not
affected.

Problem types
-------------
- CWE-125 Out-of-bounds Read

Workarounds
-----------
Callers that must enumerate extensions of untrusted certificates can
restrict enumeration to extensions_by_name(), which uses the static
shortname path and does not trigger the over-read.


Solutions
---------
Upgrade to Crypt::OpenSSL::X509 2.1.3 or later.


References
----------
https://github.com/dsully/perl-crypt-openssl-x509/commit/757289bfce095455c104d4adfe9312e7b339620f.patch
https://metacpan.org/release/JONASBN/Crypt-OpenSSL-X509-2.1.3/source/Changes.md

