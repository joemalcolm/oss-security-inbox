X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/17/19
Message-ID: <CAH7zdydGhiXgHCqbtnf1r1WunT3eZPdtCJkv2j16DVpVEJGVNQ@mail.gmail.com>
Date: Tue, 17 Nov 2026 16:59:37 +0000
From: Roger Light <roger@...hoo.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-129705: Eclipse Mosquitto: PROXY v2 listeners can be tricked into using incorrect information
Content-Type: text/plain; charset=utf-8

Severity: Low

Affected versions:

2.1.0 to 2.1.2 inclusive

Description:

A listener configured with PROXY v2 support and that requires TLS
connections to the proxy can be tricked into providing certificate
information that is not part of a valid PROXY TLV, bypassing
certificate policy.

This can be mitigated by only using trusted proxies in front of these
listeners, and not allowing any other direct access to the listener,
as described in the documentation.

Credit: Roman Ezhov

References:

https://github.com/eclipse-mosquitto/mosquitto/security/advisories/GHSA-m6rg-rrm7-h727
