X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/17/16
Message-ID: <CAH7zdyfQQ7Dq8q7wMJwC0czJnzqM__LQaZ+CPP3RTrAiwXerPw@mail.gmail.com>
Date: Tue, 17 Nov 2026 16:59:40 +0000
From: Roger Light <roger@...hoo.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-126708: Eclipse Mosquitto: Unchecked hashing function return can bypass authentication
Content-Type: text/plain; charset=utf-8

Severity: High

Affected versions:

2.0.0 to 2.0.22 inclusive
2.1.0 to 2.1.2 inclusive

Description:

When using OpenSSL 4.0 with FIPS, a password with less than 8
characters will be rejected. This rejection is not caught, leading to
the possibility that any password with less than 8 characters will
match against another password with less than 8 characters.

Credit: Will Cooke (Chainguard)

References:

https://github.com/eclipse-mosquitto/mosquitto/security/advisories/GHSA-878w-672v-qwmf
