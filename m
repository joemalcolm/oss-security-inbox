X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/03/29
Message-ID: <6d7d816b-5184-f164-f69a-6450877e8906@apache.org>
Date: Tue, 03 Nov 2026 20:37:16 +0000
From: Arrigo Marchiori <ardovm@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-90629: Apache OpenOffice: Out of bounds memory access during WMF import 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache OpenOffice through 4.1.16

Description:

An uncontrolled memory access in the WMF import code of Apache OpenOffice versions through 4.1.16 allows a crafted WMF file to cause an invalid memory access, causing program crash or memory corruption.
Users are recommended to upgrade to version 4.1.17, which fixes this issue.

Credit:

Anthropic and Ada Logics (finder)

References:

https://openoffice.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-90629

