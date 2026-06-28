X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/28/2
Message-ID: <71220217-8161-4009-80d2-b31c4726de51@gmail.com>
Date: Sun, 28 Jun 2026 19:46:22 +0200
From: Afchine Mad <afchine.mad@...il.com>
To: oss-security@...ts.openwall.com
Subject: [Security advisory] FreeHSM C v1.1.0 - v1.2.1 : raw CKM_ECDSA signatures not externally verifiable (fixed in v1.2.2 ; v1.3.0 extends boot KAT regression guard to 6/7 surfaces)
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

FreeHSM C v1.2.2 (security patch) and v1.3.0 (function-list
completion + export-roundtrip extension) are out. Both ship in
response to the first external responsible-disclosure to the
project, by Denis Mingulov via pkcs11-check (2026-06-26).

   Source     https://github.com/afchine1337/freehsm-c
   Mirrors    https://gitlab.com/afchine.mad/freehsm-c
              https://codeberg.org/afchine1337/freehsm-c
   GPG key    743A 6A59 04A1 4616 46A6 408D E485 6016 2DBB F28A 2
   [E] sub    9813 876A 34BA DD4A 0A50 915E 7EAC 4BA5 5574 DBE8

   GHSAs
     GHSA-xpxx-66pp-pf99  Denis disclosure (Findings 1+2)  HIGH
     GHSA-6jx9-gh48-5qf6  v1.2.1 integrity self-test       HIGH
     GHSA-wgv9-m9cv-4647  v1.1.0 maintainer key leak       MEDIUM
                           (retrospective ; 14h exposure
                            window 2026-06-12, mitigation
                            complete same day, advisory
                            published 2026-06-28)

   License    Apache-2.0
   Target     FIPS 140-3 Level 1 / CC EAL4+ candidate
   Stack      C11, OpenSSL 3.5 FIPS provider, PKCS#11 v3.2

== Reporter ==

Denis Mingulov via pkcs11-check (2026-06-26).
First external responsible-disclosure to the project. Crediting
follows the reporter's preferred wording (see Acknowledgements).

== Headline finding (Finding 1, HIGH) ==

In every signed release of FreeHSM C between v1.1.0 (2026-06-12)
and v1.2.1 (2026-06-21) inclusive --- 20 releases over a 15-day
window --- the raw CKM_ECDSA and CKM_RSA_PKCS sign paths produced
signatures that no third-party verifier could check.

The defect was in src/fhsm_pkcs11.c::sign_asymmetric : the raw
mechanisms routed through EVP_DigestSignInit_ex(ctx, &pctx,
mdname = NULL, ...), and on the OpenSSL 3.x default provider's
ECDSA digest_sign function, mdname = NULL triggers an internal
default digest (observed as SHA-256 on the 3.5.x default
provider). The module silently signed SHA-256(input) instead of
input.

The module's own C_Verify path applied the same default digest
symmetrically (mdname = NULL on verify), so module-internal
sign + verify cycles cancelled the double-hash out and appeared
internally consistent. Wycheproof CI exercises verification only
against pre-computed signatures and never exercised the module's
sign path externally, so the gap was invisible to internal
testing.

Any third-party verifier expecting raw ECDSA on the supplied
digest (the standard contract for CKM_ECDSA) rejected every
signature.

CVSS v3.1 (Finding 1) :
   Vector  CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H
   Base    7.5 HIGH on correctness / interoperability
   CWE-347 (Improper Verification of Cryptographic Signature)

The defect is NOT exploitable in confidentiality or integrity :
the private key is not leaked, the signature is mathematically
valid for the (wrong) double-hashed digest, no key material is
exposed.

== Second finding (Finding 2, Medium compliance) ==

C_CreateObject, C_GetSessionInfo, C_GetObjectSize, C_CopyObject,
and C_SetAttributeValue were exported as ELF symbols but their
slots in the v2.40 CK_FUNCTION_LIST pfn[] array were not assigned
in C_GetFunctionList. Normal PKCS#11 consumers (anything calling
fl->C_*) received CKR_FUNCTION_NOT_SUPPORTED (0x54). Internal
test harnesses and the Wycheproof Python adapters bypass the
function-list dispatch and call the symbols via dlsym, so the gap
was invisible to CI.

CWE-693 (Protection Mechanism Failure).

v1.2.2 wires 3 of the 5 slots :
    15  C_GetSessionInfo    implemented + wired in v1.2.2
    20  C_CreateObject      wired in v1.2.2 (implemented since v1.0)
    23  C_GetObjectSize     implemented + wired in v1.2.2

v1.3.0 (released ~4h after v1.2.2 the same day) closes the
remaining 2 slots and adds a 6th outside Denis's report scope :
    21  C_CopyObject        implemented + wired in v1.3.0
    25  C_SetAttributeValue implemented + wired in v1.3.0
    66  C_WaitForSlotEvent  wired in v1.3.0 (last unwired v2.40 slot)

PKCS#11 v2.40 dispatch coverage : 51/67 wired in v1.3.0
(was 47/67 in v1.2.2, 44/67 in v1.2.1 pre-report). All Denis-
flagged slots resolved.

== Killer test (Finding 1) ==

   M=./libfreehsm-fips.so
   PIN=12345678

   pkcs11-tool --module $M --login --pin $PIN \
       --keypairgen --key-type EC:prime256v1 --id 01

   printf hello > msg.txt
   openssl dgst -sha256 -binary msg.txt > digest.bin

   pkcs11-tool --module $M --login --pin $PIN --sign \
       --mechanism ECDSA --id 01 -i digest.bin -o sig.raw

   # Module self-verify : PASS (uses the same buggy default digest)
   pkcs11-tool --module $M --login --pin $PIN --verify \
       --mechanism ECDSA --id 01 -i digest.bin \
       --signature-file sig.raw

   # Export pubkey + verify externally with openssl :
   pkcs11-tool --module $M --login --pin $PIN --read-object \
       --type pubkey --id 01 -o pub.der
   openssl pkey -pubin -inform DER -in pub.der -out pub.pem

   R=$(head -c32 sig.raw | od -An -tx1 | tr -d ' \n')
   S=$(tail -c32 sig.raw | od -An -tx1 | tr -d ' \n')
   printf 'asn1=SEQUENCE:sig\n[sig]\nr=INTEGER:0x%s\ns=INTEGER:0x%s\n' \
       "$R" "$S" > sig.cnf
   openssl asn1parse -genconf sig.cnf -out sig.der

   # Pre-v1.2.2 : Verification failure (exit 1)
   # v1.2.2+   : Verified OK (exit 0)
   openssl dgst -sha256 -verify pub.pem -signature sig.der msg.txt

Reproduces on P-256, P-384, P-521 (every run).

== Affected releases ==

   v1.1.0 - v1.2.1 (every signed release between 2026-06-12 and
   2026-06-21). Origin commit : 0c0f5df.

   20 GPG-signed releases over a 15-day window are affected by
   Finding 1. The same 20 releases are also affected by Finding 2
   (function-list gap).

== Fixed in ==

   v1.2.2 (commit e10586f, 2026-06-27 22:42 CEST)
     06af928  raw CKM_ECDSA / RSA-PKCS use EVP_PKEY_sign
     7bab917  wire C_GetSessionInfo + C_CreateObject +
              C_GetObjectSize into the function list
     28071e9  ECDSA-P256/384/521 export-roundtrip boot KAT
              regression guard
     cbb1259  encryption subkey + SECURITY.md update (operational
              precondition that enabled the encrypted-channel
              disclosure of Denis's remaining findings)

   v1.3.0 (commit e6d5d21, 2026-06-27 22:56 CEST)
     Function-list completion :
       C_CopyObject (slot 21)
       C_SetAttributeValue (slot 25)
       C_WaitForSlotEvent (slot 66) [outside Denis's report]
     Boot KAT export-roundtrip extended to 6/7 surfaces :
       RSA-2048-PSS-SHA256-export-roundtrip
       RSA-2048-OAEP-SHA256-export-roundtrip
       Ed25519-export-roundtrip
       ML-DSA-65-export-roundtrip
       ML-KEM-768-export-roundtrip
       ECDH-P256/P384/P521-export-roundtrip
       (SLH-DSA excluded by design, documented gap)
     Total boot KAT count : 62 (was 54 in v1.2.2, 51 in v1.2.1).

== Recommended action ==

Any deployment running v1.1.0 - v1.2.1 should upgrade to v1.3.0
(or v1.2.2 minimum). The upgrade is a drop-in .so replacement ;
PKCS#11 wire format is unchanged ; token store + PIN files are
forward-compatible.

Signatures previously produced by the module via raw CKM_ECDSA
between v1.1.0 and v1.2.1 cannot be retroactively repaired ; only
signatures produced by v1.2.2+ are interoperable. If the original
messages are still accessible, re-sign with v1.3.0 ; otherwise the
v1.1.0 - v1.2.1 raw-ECDSA signatures are not recoverable.

Stopgap workaround for Finding 1 (until upgrade is possible) :
use the explicit pre-hash mechanism variants (CKM_ECDSA_SHA256,
CKM_ECDSA_SHA384, CKM_ECDSA_SHA512) instead of raw CKM_ECDSA. The
pre-hash variants route through the correct (hashed) sign path
and produce signatures that verify externally without
modification.

Stopgap workaround for Finding 2 : call the affected functions
via dlsym directly. The symbols are exported with default
visibility ; the function-list dispatch returns
CKR_FUNCTION_NOT_SUPPORTED in v1.1.0 - v1.2.1 but the symbols
themselves work.

== Disclosure decision ==

No CVE is requested for any of the three GHSAs. Same model as
v1.2.1 : informational GitHub Security Advisory, pre-certification
status, no known production deployments. A CVE will be requested
retroactively if a third-party deployment is later identified
that was running an affected version.

== Discovery + correction protocol extension ==

The five-step protocol established in v1.2.1 (Security Target
sec.13.8) is extended in v1.2.2 (sec.13.8.1) with two
operational expectations on the maintainer side that surfaced
during the disclosure :

   a. Encrypted-channel availability is a precondition for any
      third-party report. The disclosure exposed that the
      maintainer's published GPG key was sign-only ; the reporter
      could not encrypt the rest of his findings until the channel
      was restored. Commit cbb1259 added a cv25519 encryption
      subkey and published it to keys.openpgp.org with the
      maintainer's email verified.

   b. Reproduce before challenging. The Finding 1 fix took less
      than 90 minutes from git-clone of the reporter's reproduction
      script to a tested local fix. Internal CI greenness is not a
      counter-argument to a reproducible external report.

The extension is sub-procedural and applies before step 1 of the
existing protocol. It is now standing practice for any future
external-reporter case.

== Boot KAT regression guard extension (v1.3.0) ==

The ECDSA export-roundtrip pattern introduced in v1.2.2 has been
extended in v1.3.0 to every external cryptographic surface the
module exposes (6 of 7 ; SLH-DSA excluded by design on
runtime-budget grounds and documented as a known gap). Each
vector generates a fresh keypair, exercises the operation with
the original references as control, serializes the public key
via i2d_PUBKEY, reloads via d2i_PUBKEY (mimicking exactly what
an external verifier does), and exercises the operation again
with the reloaded peer.

If a future OpenSSL provider upgrade re-introduces the silent-
default-digest behaviour on any signing surface, or if i2d_PUBKEY
/ d2i_PUBKEY ever stops producing byte-stable round-trips, the
relevant boot KAT fails at C_Initialize and the module refuses
to start. The class of bug that hid in v1.1.0 - v1.2.1 for 15
days cannot recur silently on any v1.3.0+ build.

== Generalisable lesson ==

If you maintain a cryptographic module with an external-API
contract that depends on a third-party verifier matching your
output : write a boot KAT that exercises the external-roundtrip
property today. The v1.3.0 export-roundtrip pattern in
kat/cavp_extended.c (see helpers run_ecdsa_export_roundtrip,
run_rsa_pss_export_roundtrip, run_rsa_oaep_export_roundtrip,
run_evp_digestsign_export_roundtrip, run_mlkem_export_roundtrip,
run_ecdh_export_roundtrip) is the template. ~80 lines per
surface, ~5 ms boot-time cost per vector.

Cheapest insurance against the class of bug that hides behind a
green CI for three weeks until an external reporter catches it.

== Acknowledgements ==

Denis Mingulov for the careful report, the responsible-disclosure
framing despite the encrypted-channel friction, the clean
reproduction script, and the noise-aware framing on pkcs11-check
raw output. First external contribution to FreeHSM C and a
meaningful milestone for the project's maturation.

- --
Afchine Madjlessi
Simorgh Labs, Open Source Cryptography and Digital Trust
afchine.mad@...il.com
PGP   743A 6A59 04A1 4616 46A6 408D E485 6016 2DBB F28A 2
[E]   9813 876A 34BA DD4A 0A50 915E 7EAC 4BA5 5574 DBE8
-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQR0OmpZBKFGGmRkCN5IVgFi278oogUCakFB/AAKCRBIVgFi278o
oiVnAQCT52tccEGzGg/Cs9GyZ7QJ/qKzz7TXT2xMPt1Qx5O2dgEAxDPW9x3DFbTH
B8YN32lMHz3eZ/+JD1lygzPyHG80HQs=
=NaNo
-----END PGP SIGNATURE-----

