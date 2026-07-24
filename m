X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/14
Message-ID: <503b5541-b14c-01cd-823e-a4ff72997493@apache.org>
Date: Fri, 24 Jul 2026 11:08:25 +0000
From: Szymon Janc <janc@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-45815: Apache NimBLE: Remote reachable assertion in ATT Read Multiple Variable Response handler 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache NimBLE through 1.9.0

Description:

Reachable Assertion vulnerability in Apache NimBLE.
A specially crafted ATT Read Multiple Variable Response (BLE_ATT_OP_READ_MULT_VAR_RSP) may trigger assert in ATT parser.

Severity is medium as this requires DUT to first send ATT Read Multiple Variable Request.

This issue affects Apache NimBLE: through 1.9.0.

Users are recommended to upgrade to version 1.10.0, which fixes the issue.

Credit:

Amemoyoi https://github.com/Amemoyoi (reporter)

References:

https://github.com/apache/mynewt-nimble/commit/fae6a4874309ba0175d2c444e20f8a6bde007425
https://mynewt.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-45815

