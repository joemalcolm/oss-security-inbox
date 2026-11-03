X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/03/23
Message-ID: <c2268f6d-ac09-42bc-1c9f-c1822b153866@apache.org>
Date: Tue, 03 Nov 2026 20:39:17 +0000
From: Arrigo Marchiori <ardovm@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-59267: Apache OpenOffice: Heap Buffer Overflow in DXF LWPOLYLINE import could cause memory corruption 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 4.0: 5.8 (medium) CVSS:4.0/AV:L/AC:H/AT:N/PR:N/UI:P/VC:H/VI:H/VA:H/SC:H/SI:H/SA:H/E:U/S:P

Affected versions:

- Apache OpenOffice through 4.1.16

Description:

A crafted DXF document causes a heap buffer overflow in Draw in Apache OpenOffice 4.1.16 and earlier. This could cause a crash or otherwise a corruption of memory areas.
Users are recommended to upgrade to version 4.1.17, which fixes this issue.

Credit:

Trail of Bits, in collaboration with Anthropic (reporter)

References:

https://openoffice.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-59267

