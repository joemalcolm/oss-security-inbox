X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/12
Message-ID: <9cf07317-b4d5-8797-17eb-25260bb2af64@apache.org>
Date: Fri, 24 Jul 2026 11:08:10 +0000
From: Szymon Janc <janc@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-45812: Apache NimBLE: OOB Read via sizeof(pointer) in Legacy Advertising Report Handler 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache NimBLE through 1.9.0

Description:

Incorrect Calculation of Buffer Size vulnerability in Apache NimBLE when processing Legacy Advertising Report HCI event.

When a single HCI advertising report event bundles multiple reports, NimBLE miscalculated the offset to the next report. This can cause the host to read past the end of the buffer and deliver a GAP event with bogus data to the application.

Severity is low: NimBLE's own controller never batches multiple reports into one event, so this only matters when NimBLE's host is paired with a third-party controller that does.

This issue affects Apache NimBLE: through 1.9.0.

Users are recommended to upgrade to version 1.10.0, which fixes the issue.

Credit:

VulnCheck (reporter)

References:

https://github.com/apache/mynewt-nimble/commit/605c7585408bc3674818eeb7b6f478a8aefe9746
https://mynewt.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-45812

