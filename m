X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/11
Message-ID: <a6154434-40f6-346b-cfbf-3105d18adb0e@apache.org>
Date: Fri, 24 Jul 2026 11:07:58 +0000
From: Szymon Janc <janc@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-45811: Apache NimBLE: Buffer overflow in socket HCI transport 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache NimBLE through 1.9.0

Description:

Buffer Copy without Checking Size of Input ('Classic Buffer Overflow') vulnerability in Apache NimBLE.
The HCI socket transport did not check whether a received HCI event would fit the configured event pool before copying it, allowing a buffer overflow. Severity is low: exploitation requires either a misconfigured pool size or a malicious/compromised controller on the other end of the HCI socket link, not over-the-air Bluetooth access.

This issue affects Apache NimBLE: through 1.9.0.

Users are recommended to upgrade to version 1.10.0, which fixes the issue.

Credit:

Yicheng Yang, Secsys Lab, Fudan University (reporter)

References:

https://github.com/apache/mynewt-nimble/commit/dcc4e4f026109eecd507de9479bb5019306a4a41
https://mynewt.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-45811

