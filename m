X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/24/15
Message-ID: <awXDGcDDtc-CG0C0@definition.pseudorandom.co.uk>
Date: Tue, 24 Nov 2026 17:02:17 +0000
From: Simon McVittie <smcv@...ian.org>
To: oss-security@...ts.openwall.com
Cc: flatpak@...ts.freedesktop.org
Subject: Flatpak 1.18.6 fixes two security vulnerabilities
Content-Type: text/plain; charset=utf-8

Flatpak 1.18.6 fixes two security vulnerabilities.
<https://github.com/flatpak/flatpak/releases/tag/1.18.6>
All older releases should be assumed to be vulnerable.

>* Prevent a compromised or malicious app/runtime/extension with extra-data
>  from creating setuid root files on the host system when installed
>  (CVE-2026-133842, GHSA-p4mw-6jfq-r82r; thanks to RoyalOughtness)
>
>* Prevent a compromised or malicious app from escaping the sandbox by
>  manipulating file descriptor passing via flatpak-portal
>  (CVE-2026-133845, GHSA-5jrj-948r-2wx6; thanks to refi64)

For more details please see the Github advisories linked from the 
release announcement 
<https://github.com/flatpak/flatpak/releases/tag/1.18.6>.

If possible please upgrade to the latest stable release, 1.18.6. For 
users of development prereleases (not recommended), the 1.19.4 
prerelease also fixes the same vulnerabilities.

Older LTS operating system distributions might prefer to backport fixes
to an older stable-branch. The 1.16.x branch is no longer supported by
upstream and is unlikely to receive new formal releases, but backports
of the applicable vulnerability fixes are included in the upstream git
repository in the flatpak-1.16.x branch,
https://github.com/flatpak/flatpak/commits/flatpak-1.16.x/ (for example
those changes should appear in a Debian 13 security update soon).

-- 
Simon McVittie, Collabora Ltd. / Debian
