X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/25/9
Message-ID: <2576629d-93b2-4068-8099-63727021bfd7@nlnetlabs.nl>
Date: Thu, 25 Jun 2026 12:20:30 +0200
From: Willem Toorop <willem@...etlabs.nl>
To: oss-security@...ts.openwall.com
Subject: Several vulnerabilities were found in NLnet Labs NSD
Content-Type: text/plain; charset=utf-8

Several vulnerabilities were found in NLnet Labs NSD.
We have released version 4.14.3 as a security release today,Thursday 25 
June, with the fixes to these issues.

The overview of the vulnerabilities with a brief description is:

CVE-2026-12244 - severity: HIGH
Heap overflow and crash with crafted SVCB RR

CVE-2026-12245 - severity: HIGH
Denial of DNS over TLS service by any DoT client

CVE-2026-12246 - severity: HIGH
Out of bounds stack write with crafted APL RR

CVE-2026-12490 - severity: HIGH
Bypass of client certificate verification with transfer over TLS

You can find detailed information on each vulnerability attached to this 
email along with their respective patches.

For ease of deployment we also provide a combined patch including all of 
them (patch_combined-4.14.3.diff).

The patches are tested to apply/work on 4.14.2


Best regards,
-- Willem, on behalf of the NSD team.
Content of type "text/html" skipped

View attachment "CVE-2026-12244.txt" of type "text/plain" (1477 bytes)

View attachment "patch_CVE-2026-12244.diff" of type "text/x-patch" (405 bytes)

View attachment "CVE-2026-12245.txt" of type "text/plain" (1499 bytes)

View attachment "patch_CVE-2026-12245.diff" of type "text/x-patch" (647 bytes)

View attachment "CVE-2026-12246.txt" of type "text/plain" (1442 bytes)

View attachment "patch_CVE-2026-12246.diff" of type "text/x-patch" (1162 bytes)

View attachment "CVE-2026-12490.txt" of type "text/plain" (1476 bytes)

View attachment "patch_CVE-2026-12490.diff" of type "text/x-patch" (4200 bytes)

View attachment "patch_combined-4.14.3.diff" of type "text/x-patch" (6275 bytes)
