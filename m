X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/17/17
Message-ID: <CAH7zdyeZ7jg8AjHzydZSmCFz9OWPU4NGnTB2S05y-e=V0FGzxA@mail.gmail.com>
Date: Tue, 17 Nov 2026 16:59:39 +0000
From: Roger Light <roger@...hoo.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-126763: Eclipse Mosquitto: Cross client suppression of delayed Will messages
Content-Type: text/plain; charset=utf-8

Severity: Medium

Affected versions:

2.0.0 to 2.0.22 inclusive
2.1.0 to 2.1.2 inclusive

Description:

A client that connects to the broker and changes its will delay
interval in the CONNECT and DISCONNECT packet causes all Wills that
are queued and delayed for later delivery to be suppressed.

References:

https://github.com/eclipse-mosquitto/mosquitto/security/advisories/GHSA-5vjv-953v-pwfq
