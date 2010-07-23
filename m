X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/07/23/4
Message-ID: <876306aunm.fsf@mid.deneb.enyo.de>
Date: Fri, 23 Jul 2010 21:02:37 +0200
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Subject: CVE request: GnuPG 2
Content-Type: text/plain; charset=utf-8

GnuPG 2.0 before version 2.0.17 reuses a freed pointer when verifying
a signature or importing a certificate with many Subject Alternate
Names, possibly allowing context-dependent attacks to execute
arbitrary code.

<http://lists.gnupg.org/pipermail/gnupg-announce/2010q3/000302.html>
