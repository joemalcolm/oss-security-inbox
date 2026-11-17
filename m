X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/17/18
Message-ID: <CAH7zdyfW9DwH7SYHNqFezaHpNHCC-9kYrNNFniYNaD3Y94c6rg@mail.gmail.com>
Date: Tue, 17 Nov 2026 16:59:42 +0000
From: Roger Light <roger@...hoo.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-129149: Eclipse Mosquitto: mosquitto_ctrl crash when connecting to hostile broker through heap overflow
Content-Type: text/plain; charset=utf-8

Severity: Medium

Affected versions:

2.1.0 to 2.1.2 inclusive

Description:

If mosquitto_ctrl is used to connect to a hostile broker in
interactive shell mode, the broker can send responses that will cause
the utility to crash.

Users are encouraged to only ever connect to trusted brokers.

Credit: Roman Ezhov

References:

https://github.com/eclipse-mosquitto/mosquitto/security/advisories/GHSA-cp35-mcf9-93ww
