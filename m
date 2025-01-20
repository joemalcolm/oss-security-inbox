Received: (qmail 3484 invoked by uid 550); 20 Jan 2025 12:34:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9682 invoked from network); 20 Jan 2025 00:29:25 -0000
Authentication-Results: ext-mx-out013.mykolab.com (amavis);
 dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
 header.d=kolabnow.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kolabnow.com; h=
	content-disposition:content-type:content-type:mime-version
	:message-id:subject:subject:from:from:date:date:received
	:received:received; s=dkim20240523; t=1737332951; x=1739147352;
	 bh=fzTi4/E/CFd3d9zwUrMsz4fwoHZZALlSVM31yHUdAlA=; b=e2AHUtVyKnJ3
	6Pi/OuEmhR5AaZl3u6tiy3r8iHo0JNaDEc4vB7o38kKjqKhJU1sV/YwjzEV3o+td
	19Ldl6SwlqMcf5cVBrn+76ZXc7iVkFYwhM7ZTBlpbdlp8TEP40kYKAtKGzQaBqtM
	kFJFuiMSYmhAlNW+4m1fnokQ5ZOA+dbv06cNupiLjeABZET7xA0YIDf18VakNT9c
	pyPz8A8II2YOahh2Q9RrBP9lQcoeGmNKnhY7hg9CcV2HEmJE/5tx2oZ/qC9I0cRr
	iJ76sJXvx/zliF8AMHFMA5r+qTOCpzvyJyZK6KJiF3uVfOoTuGDMPQzaBTLcrqrI
	NQFv1GrCPg==
X-Virus-Scanned: amavis at mykolab.com
Date: Mon, 20 Jan 2025 01:29:08 +0100
From: Fay Stegerman <flx@obfusk.net>
To: oss-security@lists.openwall.com
Message-ID: <Z42Y1FjRnsbw5GZD@nihonium>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="I+vdY/Vp9qg1FeTS"
Content-Disposition: inline
Subject: [oss-security] fdroidserver AllowedAPKSigningKeys certificate pinning fundamentally
 unreliable

--I+vdY/Vp9qg1FeTS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi!

Another update for [1,2,3], still published at [4]: another PoC (bringing
the total to 6) and a lot of new background information.  I've attached the
new and updated files and included the new sections from the README with the
updates below.

- Fay

[1] https://www.openwall.com/lists/oss-security/2024/04/08/8
[2] https://www.openwall.com/lists/oss-security/2024/04/20/3
[3] https://www.openwall.com/lists/oss-security/2025/01/03/1
[4] https://github.com/obfusk/fdroid-fakesigner-poc

============================================================================

# F-Droid Fake Signer PoC

PoC for fdroidserver AllowedAPKSigningKeys certificate pinning bypass.

Published: 2024-04-08; updated: 2024-04-14, 2024-04-20, 2024-12-30,
2025-01-06, 2025-01-08, 2025-01-09, 2025-01-10, 2025-01-19.

NB: no new updates will be provided solely to correct any further
counterfactual statements by F-Droid.  We implore them to take
responsibility for their mistakes instead of spreading misinformation in
order to downplay our findings.

NB: see also OVERVIEW.md.

[...]

### [Observations] Update (2025-01-06)

F-Droid claims that the latest vulnerability "does not affect the repository
on f-droid.org".  Which suggests that they do not understand the
significance of this certificate pinning bypass, or they do not believe
certificate pinning is meant to provide protection against a compromise of
an upstream repository without a compromise of the upstream signing key.
Both are worrying.

All of the vulnerabilities described here were discovered by us *by
accident*, looking into things like key rotation, signature copying, and
security scans for IzzyOnDroid, not vulnerabilities in fdroidserver.  The
first one was independently discovered and reported a year earlier, and
subsequently ignored.

The latest vulnerability, the incorrect regex, was not something we
specifically predicted.  But we warned F-Droid that their approach to
handling certificate pinning with custom code independent of the signature
verification using apksigner was full of mistakes and fundamentally flawed,
which proved to be correct again and again.

We recommended "using the official apksig library (used by apksigner) to
both verify APK signatures and return the first signer's certificate to
avoid these kind of implementation inconsistencies and thus further
vulnerabilities like this one".  We even provided a Python implementation
for that.  All of our recommendations were ignored.  We find this careless
approach to security far more worrying than the impact of the individual
vulnerabilities described here.

We sincerely wish this document didn't have to exist.  We implore F-Droid to
do better, to live up to its potential, and do right by its community.

### [Observations] Update (2025-01-08)

F-Droid now claims PoC 5a is not an "actionable security vulnerability"
because "APKs signed by v1-only are not even installable on latest Android
versions".  This is false.  As long as targetSdk < 30 (and e.g. the official
F-Droid client has 29) they will install just fine.  We even confirmed this
by installing the PoC APK on Android 13-15 just in case, something they
apparently neglected to bother with before making that claim.

### [Observations] Update (2025-01-09)

F-Droid now claims they can't use the patches as-is because of "code quality
issues" (private APIs).  Which applies to exactly one patch: the one they
already merged 8 months ago (fdroidserver.patch).

Because the only way to fix the vulnerability was to monkey-patch androguard
(and an updated version is still not available in Debian, nor has the Debian
stable fdroidserver package received any patches, despite those packages
being maintained by the F-Droid team, so that monkey patch is still needed).

They are also downplaying the impact by insisting these vulnerabilities are
only a problem for third party repositories relying on fdroidserver; which,
even if true, is showing a concerning disregard for the security of the
repositories of other projects relying on fdroidserver.

Again, we find F-Droid's reaction and the security and code review processes
on display here to be highly concerning, far more than the vulnerabilities
we reported.

### [Observations] Update (2025-01-19)

Quoting the response of F-Droid's Technical Lead [12]:

> fdroidserver is fully safe for the tasks it was built for. It has been
> independently audited as well (we have two more audits coming up). If you
> have a trusted collection of APKs, then fdroidserver provides the entry
> point to a trustworthy pipe to the F-Droid client. It cannot protect
> against malicious upstreams, upstreams losing their signing keys, etc. It
> cannot fix the deprecated v1 signatures. Require v2+ signatures, and
> AllowedAPKSigningKeys works with no known weaknesses.

Based on the above, we cannot but conclude that despite earlier claims that
the "goal of AllowedAPKSigningKeys is to make it easy for non-technical
people to manage binary APK repos securely", certificate pinning is in fact
not expected to provide any security against e.g. updates from compromised
upstream repositories as it assumes a "trusted collection of APKs".

We wonder what exactly the intended purpose of certificate pinning is if not
to ensure APKs can only be provided by someone in control of the upstream
signing key, as this is the kind of security repositories like IzzyOnDroid
expected it to provide.  We also observe that the 2018 audit predates the
implementation of AllowedAPKSigningKeys certificate pinning.

Another quote [13]:

> [...] why #fdroidserver implements somethings in #Python rather than
> scraping #apksigner output. Reliably and securely parsing CLI output over
> the long term is really hard to get right because deployed fdroidserver
> code has to be future proof, in that it has to support newer apksigner
> versions that might have changed its output. For example, #fdroidserver is
> coded against apksigner from build-tools version vX.0.0. Someone does `pip
> install fdroidserver`. Then at some point, the user upgrades apksigner to
> version vY.0.0 which breaks the parsing before fdroidserver supports
> apksigner vY.0.0. That breakage needs to fail gracefully, and that is
> really hard to do. Much harder than just writing pure Python code to
> extract the certificates which is tested against the apksigner test suite.
> [...]

We agree that parsing apksigner CLI output would be unreliable.  Which is
why we recommended using the underlying apksig library which has a stable
API and even provided code to do exactly that [14].  This suggestion has
been consistently ignored with zero rationale given, other than clearly
irrelevant objections to parsing CLI output.

We vehemently disagree that the chosen approach of using custom Python code
that does not verify the signatures and relies on matching specific
*behaviour* of specific versions of apksigner (e.g. whether or not and how
it verifies v3.1 signatures) to extract the correct certificates is reliable
or secure.  This is evidenced by the 6th PoC, which works because
fdroidserver completely ignores the APK Signature Scheme v3.1 block (and
does not use any v1 signatures).

We find it concerning that F-Droid constantly chooses to move the goalposts
and continues to rely on a fundamentally broken approach for certificate
pinning, merely patching [15] known vulnerabilities without ever addressing
the underlying cause.

We reiterate once again that we recommended "using the official apksig
library (used by apksigner) to both verify APK signatures and return the
first signer's certificate to avoid these kind of implementation
inconsistencies and thus further vulnerabilities [...]".

Until a proper reliable implementation of certificate pinning using apksig
is provided (if ever), we recommend repositories using AllowedAPKSigningKeys
perform their own audit and assess whether the security they wish to provide
requires performing certificate pinning themselves or switching to e.g.
apkrepotool.

[...]

### [PoC] Update (2025-01-19)

NB: see code comments for requirements.

```bash
$ python3 make-poc-v6.py    # uses app4.apk, adds signing block from fake.apk
$ python3 fdroid.py         # verifies and has fake.apk as signer according to F-Droid
True
43238d512c1e5eb2d6569f4a3afbf5523418b82e0a3ed1552770abb9a9c9ccab
```

[...]

### [Scanner] Update (2025-01-19)

```bash
$ python3 scan.py poc6.apk
'poc6.apk': No v3 certs even though v3.1 cert is present
```

## References

[...]

* [12] https://floss.social/@IzzyOnDroid/113765504171758318
* [13] https://social.librem.one/@eighthave/113820301078034374
* [14] https://gist.github.com/obfusk/cfab950649631c3ece723b9eb277304b
* [15] https://gitlab.com/fdroid/fdroidserver/-/issues/1251

## Links

* https://github.com/obfusk/apksigcopier
* https://github.com/obfusk/apkrepotool

--I+vdY/Vp9qg1FeTS
Content-Type: text/markdown; charset=us-ascii
Content-Disposition: attachment; filename="OVERVIEW.md"

# F-Droid Certificate Pinning Bypasses - Overview

Overview of `fdroidserver` `AllowedAPKSigningKeys` certificate pinning bypasses.

Published: 2025-01-10.

## APK Signatures

- Android uses 4 different types of APK signatures: v1, v2, v3, and v3.1.
- Version 2 was introduced with Android 7, version 3 (essentially version 2 with
  support for key rotation) with Android 9, version 3.1 (a slightly improved
  version 3) with Android 13.
- An APK can be signed with any combination of these (except v3.1 always comes
  with a v3 as well), but Android < 7 only supports v1 and Android < 9 only
  supports v1 and v2, etc.
- APKs that target Android 11 (`targetSdk` >= 30) cannot be installed on devices
  running Android >= 11 if they only have a v1 signature; APKs with a lower
  `targetSdk` still install fine on any version of Android with only a v1
  signature.
- Which key an app is signed with does not matter to Android (except for things
  like verified app links).
- But apps cannot be updated without a compatible signature.

Links:

- https://source.android.com/docs/security/features/apksigning/v2
- https://source.android.com/docs/security/features/apksigning/v3

## F-Droid Repositories

- The f-droid.org repository builds from a checkout of the upstream source code
  repository and either signs the APK with their own key, or, with Reproducible
  Builds (~10% of apps), copies the signature from the APK published by the
  upstream developer(s).
- Repositories like IzzyOnDroid do not build from source but publish APKs
  provided directly by the upstream developer(s).  With Reproducible Builds
  (~30% of apps at IzzyOnDroid), independent rebuilds verify that building from
  source produces a bitwise identical APK.

Links:

- https://reproducible-builds.org/
- https://f-droid.org/docs/Reproducible_Builds/
- https://android.izzysoft.de/articles/named/iod-scan-apkchecks
- https://android.izzysoft.de/articles/named/review-2024-outlook-2025

## Certificate Pinning

- The `AllowedAPKSigningKeys` setting is meant to pin the certificate of the
  signing key used.
- It ensures only APKs signed with one of the allowed keys can be published in
  the repository.
- For repositories like IzzyOnDroid, this ensures APKs can only be provided by
  someone in control of the upstream signing key.
- For f-droid.org Reproducible Builds it ensures the same.
- The f-droid.org repository does not have any other cryptographic checks to
  prevent updates from compromised upstream repositories: it will build whatever
  is published in the upstream source code repository (though with Reproducible
  Builds the build must be reproducible).

## Exploits

- Best practice for certificate pinning is to implement it as part of the
  signature verification; this is what `apkrepotool` does using `apksig`.
- The `fdroidserver` implementation uses `apksigner` to verify the APK has a
  valid signature, but uses completely different code to extract the certificate
  from the APK.
- Multiple exploits have been demonstrated that exploit these differences by
  creating signatures that are entirely valid according to `apksigner` but for
  which the `fdroidserver` code returns the wrong certificate fingerprint, one
  that can be freely chosen, thus completely defeating the certificate pinning
  protections.

Links:

- https://github.com/obfusk/fdroid-fakesigner-poc
- https://github.com/obfusk/apkrepotool

## Reaction

- The first vulnerability was ignored for a year after being publicly reported
  and only fixed after a PoC and patch were published.
- Despite known exploits being patched, new exploits have continuously been
  discovered.
- Despite repeated warnings of bad practice, the `fdroidserver` implementation
  still uses their own custom code for certificate extraction instead of
  combining signature verification and certificate extraction into one step
  using `apksig` (for which code was provided to them, which they ignored).
- This approach will likely result in further exploits being discovered and
  should be considered fundamentally broken.
- F-Droid has falsely claimed that "APKs signed by v1-only are not even
  installable on latest Android versions".
- F-Droid has claimed to be unable to use the provided patches as-is because of
  "code quality issues" (private APIs) despite only the patch they already
  merged 8 months ago (`fdroidserver.patch`) matching that description.
- F-Droid is correct that the certificate pinning bypasses "can only be
  exploited when an upstream project is compromised first, and only new
  installations will be affected"; that is indeed how certificate pinning works.
- F-Droid deems the latest certificate pinning bypass "low urgency" because it
  "currently does not affect f-droid.org", showing a concerning disregard for
  the security requirements of other repositories relying on `fdroidserver` and
  seemingly confirming that preventing publishing updates from compromised
  upstream repositories using cryptographic checks is not considered part of the
  security model of f-droid.org.
- F-Droid claims that the "goal of AllowedAPKSigningKeys is to make it easy for
  non-technical people to manage binary APK repos securely" yet consistently
  downplays the consequences as not affecting f-droid.org, seemingly
  disregarding the consequences for those repositories relying on certificate
  pinning for security for which the feature is ostensibly meant, and offering
  no rationale for continuing to use a fundamentally broken implementation.
- Despite being maintained by the F-Droid team, the Debian stable `fdroidserver`
  and `androguard` packages still have not received any of the patches 8 months
  later (almost two years after the first vulnerability was reported).

Links:

- https://gitlab.com/fdroid/fdroidserver/-/issues/1128
- https://gitlab.com/fdroid/fdroidserver/-/merge_requests/1466
- https://floss.social/@IzzyOnDroid/113765504171758318
- https://floss.social/@fdroidorg/113804900156856580

--I+vdY/Vp9qg1FeTS
Content-Type: text/x-python; charset=us-ascii
Content-Disposition: attachment; filename="make-poc-v6.py"

#!/usr/bin/python3
# encoding: utf-8
# SPDX-FileCopyrightText: 2025 FC (Fay) Stegerman <flx@obfusk.net>
# SPDX-License-Identifier: GPL-3.0-or-later

import apksigcopier
import apksigtool
import dataclasses


# requires:
# - app4.apk with minSdk >= 33
# - fake.apk with v2 signature
# - apksigner from e.g. build-tools 33.0.0 (32.0.0 is too old, 34.0.0 too new,
#   it must be between commits 5be82c38d60ef3c1d9fc42bdbca8495434c88f0d and
#   8add6a4c0cc3e92c29f61ef83325da3bb6f0b28b)
apksigcopier.copy_apk("app4.apk", "poc-unsigned.apk")

apksigtool.APK_SIGNATURE_SCHEME_V3_BLOCK_ID = apksigtool.APK_SIGNATURE_SCHEME_V31_BLOCK_ID
apksigtool.do_sign("poc-unsigned.apk", "poc.apk", cert="cert-rsa.der",
                   key="privkey-rsa.der", no_v1=True, no_v2=True)

_, sig_block_a = old_v2_sig_a = apksigtool.extract_v2_sig("poc.apk")
_, sig_block_b = old_v2_sig_b = apksigtool.extract_v2_sig("fake.apk")
blk_a = apksigtool.parse_apk_signing_block(sig_block_a, allow_nonzero_verity=True)
blk_b = apksigtool.parse_apk_signing_block(sig_block_b, allow_nonzero_verity=True)
blk_a_pairs = list(blk_a.pairs)
blk_b_pairs = [p for p in blk_b.pairs if p.id == apksigtool.APK_SIGNATURE_SCHEME_V2_BLOCK_ID]
size = sum(len(p.dump()) for p in blk_a_pairs + blk_b_pairs) + 32 + 12
pad_blk = apksigtool.VerityPaddingBlock(4096 - size % 4096)
pairs = tuple(blk_a_pairs + blk_b_pairs + [apksigtool.Pair.from_block(pad_blk)])
blk_poc = dataclasses.replace(blk_a, pairs=pairs)
apksigtool.replace_apk_signing_block("poc.apk", blk_poc.dump(), old_v2_sig=old_v2_sig_a)

--I+vdY/Vp9qg1FeTS--
