X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/03/32
Message-ID: <579b1f60-e3ec-a2c8-996c-aeb6fe79d86c@apache.org>
Date: Tue, 03 Nov 2026 20:38:08 +0000
From: Arrigo Marchiori <ardovm@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-90634: Apache OpenOffice: Out-of-bounds write when importing encrypted PDF files 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache OpenOffice through 4.1.16

Description:

An uncontrolled memory access in the PDF import code of Apache OpenOffice versions through 4.1.16 allows a crafted PDF to cause an out-of-bounds memory write, causing program crash or memory corruption.
Users are recommended to upgrade to version 4.1.17, which fixes this issue.

Credit:

Anonymous working with TrendAI Zero Day Initiative (finder)

References:

https://openoffice.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-90634

