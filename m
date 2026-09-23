X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/23/5
Message-ID: <arPfLYJxr9VNtE0_@definition.pseudorandom.co.uk>
Date: Wed, 23 Sep 2026 15:16:13 +0100
From: Simon McVittie <smcv@...ian.org>
To: oss-security@...ts.openwall.com
Cc: flatpak@...ts.freedesktop.org
Subject: xdg-dbus-proxy 0.1.9 fixes sandbox escape CVE-2026-94422
Content-Type: text/plain; charset=utf-8

xdg-dbus-proxy 0.1.9 fixes a security vulnerability, CVE-2026-94422:
<https://github.com/flatpak/xdg-dbus-proxy/security/advisories/GHSA-2cgv-pwcq-wvpq>
<https://github.com/flatpak/xdg-dbus-proxy/releases/tag/0.1.9>

All versions older than 0.1.9 are vulnerable.

>An incorrect implementation of message filtering in xdg-dbus-proxy
>versions before 0.1.9 allows an attacker to bypass the intended message
>filtering on the D-Bus session bus by setting a reply serial number on
>non-reply messages.
>
>xdg-dbus-proxy was designed to be part of the sandbox boundary for Flatpak,
>but it is released as a separate project and is sometimes used by other
>app frameworks such as Firejail.
>
>Impact
>======
>
>A malicious or compromised Flatpak app could achieve arbitrary code
>execution outside its sandbox.
>
>If other app frameworks rely on xdg-dbus-proxy in the same way that
>Flatpak does, then they will have an equivalent vulnerability until
>xdg-dbus-proxy is updated.
>
>Patches
>=======
>
>Fixed in 0.1.9 by commits:
>
> * e5702fc "proxy: Don't assume that only returns and errors have a reply-serial"
> * fc027f7 "proxy: Make it clearer which direction messages are going in"
> * e4465a0 "proxy: Only allow replies to go to the correct destination"
>
>Test coverage is provided by commits
>
> * 4427d5d "tests: Add basic test coverage for reply handling"
> * e7f2f89 "tests: Assert that "replies" of inappropriate types aren't accepted"
> * 78045ce "tests: Assert that forged replies cannot be sent to wrong destination"
>
>Workarounds
>===========
>
>Avoid running untrusted Flatpak apps.
>
>Avoid running untrusted apps via other frameworks that use xdg-dbus-proxy.
>
>Credits
>=======
>
>Reported by @refi64.

-- 
Simon McVittie, Collabora Ltd. / Debian
