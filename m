X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/03/28
Message-ID: <792d4f12-9820-ec57-b4de-544b3a543f46@apache.org>
Date: Tue, 03 Nov 2026 20:37:02 +0000
From: Arrigo Marchiori <ardovm@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-90628: Apache OpenOffice: Stack overflow in CFF hint handling 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache OpenOffice through 4.1.16

Description:

An uncontrolled memory access in the PDF export code of Apache OpenOffice versions through 4.1.16 allows a crafted CFF font to cause a stack overflow problem, causing program crash or memory corruption, or even running other code.

Users are recommended to upgrade to version 4.1.17, which fixes this issue.

Credit:

Anthropic and Ada Logics (finder)

References:

https://openoffice.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-90628

