X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/30/5
Message-ID: <2324cb71-f5fc-52e9-d554-b9b1a8595e48@apache.org>
Date: Wed, 30 Sep 2026 07:37:12 +0000
From: Christofer Dutz <cdutz@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-102509: Apache PLC4X: Pre-authentication resource exhaustion in the OPC UA driver and the Java SPI parser 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 4.0: 8.7 (high) CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/VI:N/VA:H/SC:N/SI:N/SA:N

Affected versions:

- Apache PLC4X 0.10.0 before 1.0.0
- Apache PLC4X 1.0.0 unaffected
- Apache PLC4X 0.10.0 before 1.0.0
- Apache PLC4X 1.0.0 unaffected

Description:

Memory Allocation with Excessive Size Value, Allocation of Resources Without Limits, and Uncontrolled Recursion in the Java implementation of Apache PLC4X (PLC4J) allow a malicious or impersonated device to exhaust the memory or stack of the client application, causing a denial of service.

In the OPC UA driver these defects are reachable before authentication: the offending data is parsed while the secure channel and session are being established, before the server's identity has been bound to it. Configuring a trusted server therefore does not prevent exploitation by an attacker who can 
impersonate it.

The individual defects are:
- Length-prefixed byte strings are allocated at the size claimed on the wire before the length is checked against the data actually received (0.10.0 through 0.13.1).
- Array fields in generated protocol parsers pre-allocate a list with the element count claimed on the wire, allowing a single count field to trigger a multi-gigabyte allocation. This parser is shared by all PLC4J drivers; the OPC UA driver is the verified pre-authentication path (0.10.0 through 0.13.1).
- The OPC UA driver accumulates message chunks without enforcing the negotiated maximum chunk count and message size (0.12.0 through 0.13.1).
- The OPC UA driver pre-allocates collections using element counts received from the server (0.10.0 through 0.13.1).
- Recursive protocol types are parsed without a nesting-depth limit. The same defect in the Go implementation is covered by  CVE-2026-102510 https://cveprocess.apache.org/cve5/CVE-2026-102510 .

This issue affects Apache PLC4X: from 0.10.0 before 1.0.0.

Users are recommended to upgrade to version 1.0.0, which fixes the issue.

Credit:

Abhinav Agarwal (finder)

References:

https://plc4x.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-102509

Timeline:

2026-07-09: reported to the Apache Security Team
2026-07-10: reported issues fixed on develop (a2dbb6bfc0, 5a4d5bdb4c)
2026-09-07: Apache PLC4X 1.0.0 released with the fixes

