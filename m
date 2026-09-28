X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/28/6
Message-ID: <arpxQYDVantx_OC9@definition.pseudorandom.co.uk>
Date: Mon, 28 Sep 2026 14:53:05 +0100
From: Simon McVittie <smcv@...ian.org>
To: oss-security@...ts.openwall.com
Cc: flatpak@...ts.freedesktop.org
Subject: Flatpak 1.18.4 fixes multiple security vulnerabilities
Content-Type: text/plain; charset=utf-8

Flatpak 1.18.4 fixes several security vulnerabilties.
<https://github.com/flatpak/flatpak/releases/tag/1.18.4>
All older releases should be assumed to be vulnerable.

>* Prevent privileged overwrite of arbitrary files with an empty file or a
>  symlink to /run/host/monitor/resolv.conf when a malicious app is installed
>  (CVE-2026-97024, GHSA-8xgq-v545-vgvf; thanks to Sebastian Wick)
>
>* Prevent privileged deletion of arbitrary files when a malicious app
>  is installed
>  (CVE-2026-97023, GHSA-5p67-xh8x-rq54; thanks to Sebastian Wick)
>
>* When downloading apps or runtimes from an OCI repository that requires
>  authentication, don't make the authentication token visible to other users
>  (CVE-2026-97025, GHSA-7rvf-rqr3-43j4; thanks to AISLE in cooperation
>  with Red Hat)
>
>* Restrict permissions on temporary repository directories in
>  /var/tmp/flatpak-cache-*
>  (CVE-2026-97026, GHSA-r9w3-qx54-qvc8; thanks to AISLE in cooperation
>  with Red Hat)
>
>* Filter .desktop and D-Bus .service files against an allowlist of fields,
>  preventing denial of service and unintended interactions with host services
>  (CVE-2026-97027, GHSA-v64f-hrwr-j4vh; thanks to Markus Göllnitz)
>
>* Prevent apps from sending signals to a process group that includes a
>  parent process outside the app, causing denial of service by killing
>  the desktop environment
>  (CVE-2026-97029, GHSA-f3p8-vr7v-gxf2; thanks to Guthrie Armstrong,
>  Coalition, Inc.)

For more details please see the Github advisories linked from the 
release announcement 
<https://github.com/flatpak/flatpak/releases/tag/1.18.4>.

This release also improves hardening against symlink traversal (related 
to CVE-2026-97023 and CVE-2026-97024), and updates the Meson wrap file 
for xdg-dbus-proxy to a version that is not vulnerable to 
CVE-2026-94422.

If possible please upgrade to the latest stable release, 1.18.4. For 
users of development prereleases, the 1.19.2 prerelease also fixes the 
same vulnerabilities.

Older LTS operating system distributions might prefer to backport fixes
to an older stable-branch. The 1.16.x branch is no longer supported by
upstream and is unlikely to receive new formal releases, but backports
of the applicable vulnerability fixes are included in the upstream git
repository in the flatpak-1.16.x branch,
https://github.com/flatpak/flatpak/commits/flatpak-1.16.x/ (for example
those changes should appear in a Debian 13 security update soon).

-- 
Simon McVittie, Collabora Ltd. / Debian
