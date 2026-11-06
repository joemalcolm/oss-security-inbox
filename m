X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/06/4
Message-ID: <5008977C-5D0C-4F34-AD00-3D08A857593C.1@smtp-inbound1.duck.com>
Date: Thu, 05 Nov 2026 23:45:11 -0500
From: theknell@...k.com
To: oss-security@...ts.openwall.com
Subject: Open WebUI: the Windows installer mints the master key from the install second — CVE-2025-15603 was rejected; here is the measurement
Content-Type: text/plain; charset=utf-8

Open WebUI's Windows installer (start_windows.bat) generates
WEBUI_SECRET_KEY — the master secret that signs every session token —
from the C library's rand(), a linear congruential generator seeded
once with the current time in seconds. The key's entire entropy is
the second in which the software was installed.

From any ordinary user's own token, the master key is recoverable
blind in ~2.1 seconds across a ±1-day window. With it, a full
administrator token can be forged and is accepted by the official
release. All 178 release tags ship the construction. On the newest
tags (v0.12.0+) a per-account session stamp blocks cross-account
forgery; the key recovery itself is total on every tag, and 171 of
178 tags have no stamp at all.

This issue was reported before. It became CVE-2025-15603, was
disputed by the vendor, and the CVE was rejected in June 2026. The
vendor's guidance was: no action required.

The paper replaces that judgment with a measurement. It is
clear-signed, and a timestamped copy is held at archive.org:

Paper: https://archive.org/details/knell-one-second
Mirror: https://github.com/the-knell/one-second
Key: 133883AB9F6EDE5B9BA6B82E27BEDAF0CE152F25 (knell)

Verify: gpg --import knell-public.asc, then
gpg --verify whitepaper-openwebui-FINAL-2026-11-04.md.asc

— knell

More, signed and timestamped: https://github.com/the-knell
