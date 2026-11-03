X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/03/25
Message-ID: <978363c1-e99e-10f6-4155-7836e490b06e@apache.org>
Date: Tue, 03 Nov 2026 20:36:04 +0000
From: Arrigo Marchiori <ardovm@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-90624: Apache OpenOffice: PDF File Parsing Heap based Buffer-Overflow-Remote Code Execution Vulnerability 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache OpenOffice through 4.1.16

Description:

An unchecked memory access in the PDF import code of Apache OpenOffice versions through 4.1.16 on allows a crafted PDF to execute an out-of-bounds memory write. This could crash the program or cause memory corruption.
Users are recommended to upgrade to version 4.1.17, which fixes this issue.

Credit:

Anonymous working with TrendAI Zero Day Initiative (finder)
Anthropic and Ada Logics (finder)

References:

https://openoffice.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-90624

