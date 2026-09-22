X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/22/22
Message-ID: <arL3o_FR4QbOIgKM@definition.pseudorandom.co.uk>
Date: Tue, 22 Sep 2026 22:48:19 +0100
From: Simon McVittie <smcv@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: Flatpak 1.18.1 fixes multiple vulnerabilities
Content-Type: text/plain; charset=utf-8

On Tue, 11 Aug 2026 at 17:38:45 +0100, Simon McVittie wrote:
>Today's Flatpak 1.18.1 release fixes multiple vulnerabilities.

We've eventually been able to obtain CVE IDs for most of these (two are 
still pending). I requested CVE IDs from Github before we unembargoed, 
but we haven't received any response in most cases, so we fell back to 
requesting CVE IDs from other CNAs (variously MITRE and Red Hat).

>* Fix sandbox escape with full host filesystem read/write access via symlink
>  attack on app data directories
>  (https://github.com/flatpak/flatpak/security/advisories/GHSA-8688-9x26-hhxj,
>  thanks to Ee Yang)

CVE-2026-90616

>* Fix local root privilege escalation via revokefs symlink path traversal and
>  commit tampering   (https://github.com/flatpak/flatpak/security/advisories/GHSA-qrwq-7qwx-q9rp,
>  thanks to Ee Yang)

CVE ID requested from MITRE, pending request ref. CAN-2026-2052453

>* Fix arbitrary root write via symlink and path traversal in extra-data
>  extraction
>  (https://github.com/flatpak/flatpak/security/advisories/GHSA-fqx6-vh4p-42cg,
>  thanks to AISLE in cooperation with Red Hat)

CVE-2026-96275

>* Fix arbitrary root write via path traversal in `flatpak build-init`
>  (https://github.com/flatpak/flatpak/security/advisories/GHSA-8qxj-x646-phcm,
>  thanks to Sebastian Wick)

CVE-2026-96276

>* Fix arbitrary host file read via hardlink path traversal in OCI archive
>  extraction
>  (https://github.com/flatpak/flatpak/security/advisories/GHSA-9rww-v4mm-x4jg,
>  thanks to Sebastian Wick)

CVE-2026-96279

>* Fix path traversal via unvalidated architecture parameter in DeployAppstream
>  (https://github.com/flatpak/flatpak/security/advisories/GHSA-v2gw-v9h5-9q4x,
>  thanks to Yehia Ali Mohamed Ezzat)

CVE-2026-92162

>* Fix buffer overflow in OCI delta stream path names on 32-bit systems
>  (https://github.com/flatpak/flatpak/security/advisories/GHSA-jr92-2v97-wgvc,
>  thanks to Sebastian Wick)

CVE-2026-96280

>* Fix fixed-filename writes to arbitrary locations via symlink attack on .ld.so
>  (https://github.com/flatpak/flatpak/security/advisories/GHSA-99wv-m8rp-g58x,
>  thanks to Sebastian Wick)

CVE ID requested from MITRE, pending request ref. CAN-2026-2052452

>* Fix extension metadata path traversal allowing host filesystem probing and
>  unintended mount locations
>  (https://github.com/flatpak/flatpak/security/advisories/GHSA-w69g-9x8j-7p8f,
>  thanks to Sebastian Wick)

CVE-2026-96282

>* Fix anti-downgrade bypass allowing unprivileged users to downgrade system
>  apps
>  (https://github.com/flatpak/flatpak/security/advisories/GHSA-q4gr-vc25-57m5,
>  thanks to BreachX Zero Day Labs)

CVE-2026-96281

There is also a CVE ID that has been issued by Red Hat for a backported 
Flatpak version in RHEL, CVE-2026-76925. Based on discussion with the 
Debian and Red Hat security teams, it seems that this is intended to be 
RHEL-specific (possibly related to one of the upstream vulnerabilities 
fixed in 1.18.1, but with different exploitation steps) and is not 
applicable to upstream Flatpak.

For completeness, we've also obtained CVE IDs for the two lower-severity 
issues that were fixed in 1.16.4:

* Arbitrary read access to files readable by the flatpak or _flatpak
   system user
   (https://github.com/flatpak/flatpak/security/advisories/GHSA-2fxp-43j9-pwvc)
   is CVE-2026-96284

* Ability to prevent another user's flatpak-system-helper pull from
   being cancelled
   (https://github.com/flatpak/flatpak/security/advisories/GHSA-89xm-3m96-w3jg)
   is CVE-2026-96283

I hope these will help vendors to keep track of vulnerability/fix 
status.

     smcv
