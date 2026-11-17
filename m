X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/17/14
Message-ID: <CAH7zdyecu6sopahB7qExNNvX_CL9ey5bjz=unCU-id4Yhb5c8A@mail.gmail.com>
Date: Tue, 17 Nov 2026 16:59:33 +0000
From: Roger Light <roger@...hoo.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-110486: Eclipse Mosquitto: Remote code execution via websockets listeners
Content-Type: text/plain; charset=utf-8

Severity: critical

Affected versions:

2.1.0 to 2.1.2 inclusive

Description:

The built in websockets implementation in mosquitto is vulnerable to
pre-authentication remote code execution due to mishandling of
websockets frames.

Users are strongly recommended to upgrade to 2.1.4.

This issue can be mitigated by stopping use of websockets listeners,
or by compiling with libwebsockets support.

References:

https://github.com/eclipse-mosquitto/mosquitto/security/advisories/GHSA-6j8m-r32v-4h38
