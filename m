X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/17/20
Message-ID: <CAH7zdycqMj3qP4DxAwm1sYU-WZ382PR3MmCe8w-NDenDpDwdBw@mail.gmail.com>
Date: Tue, 17 Nov 2026 16:59:35 +0000
From: Roger Light <roger@...hoo.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-130491: Eclipse Mosquitto: Uninitialised heap disclose in CONNECT through Will payload truncation
Content-Type: text/plain; charset=utf-8

Severity: Medium

Affected versions:

1.5 to 2.0.22 inclusive
2.1.0 to 2.1.2 inclusive

Description:

If a client using libmosquitto attempts to set a Will message using
mosquitto_will_set*() and the payload is >65535 bytes, the payload
will not be rejected. len mod 65535 uninitialised bytes will be sent
as part of the CONNECT packet, and the packet will be malformed.

Credits: Yifan Xie

References:

https://github.com/eclipse-mosquitto/mosquitto/security/advisories/GHSA-6hx2-p6j3-qrjg
