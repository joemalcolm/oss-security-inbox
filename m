X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/17/15
Message-ID: <CAH7zdyf9-MKyPF1vW57rShUewYVRRnpkFrOwSmcUfh9iwPkPmw@mail.gmail.com>
Date: Tue, 17 Nov 2026 16:59:34 +0000
From: Roger Light <roger@...hoo.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-126706: Eclipse Mosquitto: mosquitto_ctrl crashes when connecting to a hostile broker
Content-Type: text/plain; charset=utf-8

Severity: Low

Affected versions:

2.1.0 to 2.1.2 inclusive

Description:

If mosquitto_ctrl is used to connect to a hostile broker, the broker
can send non-string "error" fields and cause the utility to crash.

Users are encouraged to only ever connect to trusted brokers.

Credit: Karl Machleid

References:

https://github.com/eclipse-mosquitto/mosquitto/security/advisories/GHSA-c9wr-998w-8wf5
