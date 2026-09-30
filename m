X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/30/6
Message-ID: <95b5cd10-bc7b-163d-3005-a2c51328f8aa@apache.org>
Date: Wed, 30 Sep 2026 07:37:22 +0000
From: Christofer Dutz <cdutz@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-102510: Apache PLC4X: Go binding: unbounded allocation and framing failures on wire-controlled lengths 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 4.0: 8.7 (high) CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/VI:N/VA:H/SC:N/SI:N/SA:N

Affected versions:

- Apache PLC4X 0.11.0 before 1.0.0
- Apache PLC4X 1.0.0 unaffected

Description:

Integer Overflow, Improper Validation of Array Index, Uncontrolled Recursion and Memory Allocation with Excessive Size Value in the Go implementation of Apache PLC4X (PLC4Go) allow a malicious device, or an attacker able to inject network traffic, to crash or exhaust the memory of the client application,
causing a denial of service.

The individual defects are:
- Generated parsers pre-allocate arrays with the element count claimed on the wire (0.13.0 through 0.13.1).
- Transport read helpers allocate buffers of the size claimed on the wire without an upper bound.
- ADS and KNXnet/IP response handling indexes into received data without checking its length, causing a panic.
- ADS and EIP frame-length handling accepts, or arithmetically wraps to, a length of zero, breaking message framing.
- Recursive protocol types are parsed without a nesting-depth limit. The same defect in the Java implementation is covered by  CVE-2026-102509 https://cveprocess.apache.org/cve5/CVE-2026-102509 .

Additionally, length and position arithmetic in generated serializers was performed in 16-bit integers. If an application forwards attacker-influenced payloads larger than 8 KB, the length field wraps, and the remainder of the payload may be interpreted by the receiving device (for example, an ADS PLC) as 
additional, independent protocol messages.

This issue affects Apache PLC4X: from 0.11.0 before 1.0.0. PLC4Go is consumed as the Go module github.com/apache/plc4x/plc4go; versions refer to the corresponding Apache PLC4X releases.

Users are recommended to upgrade to version 1.0.0, which fixes the issue.

References:

https://plc4x.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-102510

Timeline:

2026-08-11: found during the internal security review
2026-09-07: Apache PLC4X 1.0.0 released with the fixes

