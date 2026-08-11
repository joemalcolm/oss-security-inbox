X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/11/9
Message-ID: <antQEgkyczwi7wJY@definition.pseudorandom.co.uk>
Date: Tue, 11 Aug 2026 17:38:42 +0100
From: Simon McVittie <smcv@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Flatpak 1.18.1 fixes multiple vulnerabilities
Content-Type: text/plain; charset=utf-8

Today's Flatpak 1.18.1 release fixes multiple vulnerabilities. The 
Flatpak team have requested CVE IDs for all of these vulnerabilities 
from Github, but no CVE IDs are available yet: instead, please 
cross-reference these vulnerabilities by their GHSA- IDs for now. The 
advisories will be updated with CVE IDs when they become available.

* Fix sandbox escape with full host filesystem read/write access via symlink
   attack on app data directories
   (https://github.com/flatpak/flatpak/security/advisories/GHSA-8688-9x26-hhxj,
   thanks to Ee Yang)

* Fix local root privilege escalation via revokefs symlink path traversal and
   commit tampering 
   (https://github.com/flatpak/flatpak/security/advisories/GHSA-qrwq-7qwx-q9rp,
   thanks to Ee Yang)

* Fix arbitrary root write via symlink and path traversal in extra-data
   extraction
   (https://github.com/flatpak/flatpak/security/advisories/GHSA-fqx6-vh4p-42cg,
   thanks to AISLE in cooperation with Red Hat)

* Fix arbitrary root write via path traversal in `flatpak build-init`
   (https://github.com/flatpak/flatpak/security/advisories/GHSA-8qxj-x646-phcm,
   thanks to Sebastian Wick)

* Fix arbitrary host file read via hardlink path traversal in OCI archive
   extraction
   (https://github.com/flatpak/flatpak/security/advisories/GHSA-9rww-v4mm-x4jg,
   thanks to Sebastian Wick)

* Fix path traversal via unvalidated architecture parameter in DeployAppstream
   (https://github.com/flatpak/flatpak/security/advisories/GHSA-v2gw-v9h5-9q4x,
   thanks to Yehia Ali Mohamed Ezzat)

* Fix buffer overflow in OCI delta stream path names on 32-bit systems
   (https://github.com/flatpak/flatpak/security/advisories/GHSA-jr92-2v97-wgvc,
   thanks to Sebastian Wick)

* Fix fixed-filename writes to arbitrary locations via symlink attack on .ld.so
   (https://github.com/flatpak/flatpak/security/advisories/GHSA-99wv-m8rp-g58x,
   thanks to Sebastian Wick)

* Fix extension metadata path traversal allowing host filesystem probing and
   unintended mount locations
   (https://github.com/flatpak/flatpak/security/advisories/GHSA-w69g-9x8j-7p8f,
   thanks to Sebastian Wick)

* Fix anti-downgrade bypass allowing unprivileged users to downgrade system
   apps
   (https://github.com/flatpak/flatpak/security/advisories/GHSA-q4gr-vc25-57m5,
   thanks to BreachX Zero Day Labs)

All older Flatpak versions are believed to be vulnerable to all of 
these, except for GHSA-9rww-v4mm-x4jg which does not affect version 
1.16.x or older.

If possible please upgrade to the latest stable release, 1.18.1. For 
users of development prereleases, the 1.19.0 prerelease also fixes the 
same vulnerabilities.

Older LTS operating system distributions might prefer to backport fixes 
to an older stable-branch. The 1.16.x branch is no longer supported by 
upstream and is unlikely to receive new formal releases, but backports 
of the applicable vulnerability fixes are included in the upstream git 
repository in the flatpak-1.16.x branch, 
https://github.com/flatpak/flatpak/commits/flatpak-1.16.x/ (for example 
those changes should appear in a Debian 13 security update soon).

Known errata for these releases:

* A new unit test related to GHSA-v2gw-v9h5-9q4x causes build-time test
   failures when building with very old versions of Meson, such as the
   version in Ubuntu 22.04. Older LTS distributions can apply
   https://github.com/flatpak/flatpak/pull/6768 as a workaround.

-- 
Simon McVittie, Collabora Ltd. / Debian
