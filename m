X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/13
Message-ID: <234dbbdb-798a-7243-c0ee-01c5fd2c4963@apache.org>
Date: Fri, 24 Jul 2026 11:08:16 +0000
From: Szymon Janc <janc@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-45813: Apache NimBLE: Incorrect data validation in BASS add/modify source operation 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache NimBLE through 1.9.0

Description:

Out-of-bounds Write, Integer Underflow (Wrap or Wraparound) vulnerability in Apache NimBLE BASS service.
Improper validation when parsing BASS service  "Add Source" and "Modify Source" operation PDU could results in stack buffer overflow or arbitrary out-of-bound read.


This can be triggered by nearby devices over Bluetooth connection, however pairing is required prior to accessing BASS service, which depending on device configuration may or may not require user action.

This issue affects Apache NimBLE: through 1.9.0.

Users are recommended to upgrade to version 1.10.0, which fixes the issue.

Credit:

VulnCheck (reporter)
侯朋朋 <pengpeng@...as.ac.cn> (reporter)

References:

https://github.com/apache/mynewt-nimble/pull/2232
https://mynewt.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-45813

