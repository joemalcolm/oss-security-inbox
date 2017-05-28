X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/05/28/1
Message-ID: <20170528093209.d3zwubz4n2b3f4az@eldamar.local>
Date: Sun, 28 May 2017 11:32:09 +0200
From: Salvatore Bonaccorso <carnil@...ian.org>
To: OSS Security Mailinglist <oss-security@...ts.openwall.com>
Subject: Gajim: CVE-2016-10376: possible to remote extract plain-text from encrypted sessions
Content-Type: text/plain; charset=utf-8

Hi

MITRE has assigned CVE-2016-10376 for the following issue: Gajim
unconditionally implements the "XEP-0146: Remote Controlling Clients"
extension, which may be abused by malicious XMPP servers to, or
example, extract plaintext from OTR encrypted sessions.

References:
 - Upstream issue: https://dev.gajim.org/gajim/gajim/issues/8378
 - Upstream commit: https://dev.gajim.org/gajim/gajim/commit/cb65cfc5aed9efe05208ebbb7fb2d41fcf7253cc
 - Debian Bug: https://bugs.debian.org/863445

Regards,
Salvatore
