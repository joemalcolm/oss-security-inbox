X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/11/10
Message-ID: <antTVEMW-L2Q8C8p@definition.pseudorandom.co.uk>
Date: Tue, 11 Aug 2026 17:52:36 +0100
From: Simon McVittie <smcv@...ian.org>
To: oss-security@...ts.openwall.com
Subject: xdg-dbus-proxy: GHSA-r7hp-698j-2h6c: broadcast message filtering bypass
Content-Type: text/plain; charset=utf-8

https://github.com/flatpak/xdg-dbus-proxy/security/advisories/GHSA-r7hp-698j-2h6c

xdg-dbus-proxy is a filtering proxy for D-Bus messages, used by Flatpak 
and perhaps other sandboxing frameworks (for example Firejail seems to 
contain references to it).

xdg-dbus-proxy versions 0.1.6 and 0.1.7 had an incorrect implementation 
of broadcast message filtering, which allowed sandboxed apps to receive 
more broadcast messages than the configured filter rules allow. In 
Flatpak, this typically affects the D-Bus session bus (user bus) used by 
user applications, and the AT-SPI bus used by accessibility tools.

A CVE ID has been requested, but is not yet available: please 
cross-reference this vulnerability as GHSA-r7hp-698j-2h6c until a CVE ID 
becomes available.

This is fixed in 0.1.8, or can be patched in older versions by reverting 
commit 029784535ed9cbec6c431b12ba1a9eca6c147055 "Don't require TALK 
permission for broadcast rules". Versions 0.1.5 or older are not 
vulnerable.

Note that fixing this vulnerability may cause regressions unless app 
frameworks are updated appropriately: see the full advisory for details. 
In Flatpak, this regression was avoided by commit 2afb4cf "run-dbus: 
Correct --broadcast rules for the AT-SPI bus", which was included in the 
1.18.1 and 1.19.0 releases. Other sandboxing frameworks might need a 
similar change.

-- 
Simon McVittie, Collabora Ltd. / Debian
