X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/03/24
Message-ID: <2841dd71-1b58-8ebe-1c2e-3b75597aa241@apache.org>
Date: Tue, 03 Nov 2026 20:35:27 +0000
From: Arrigo Marchiori <ardovm@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-59268: Apache OpenOffice: Heap out-of-bounds write in WW8 PLCF reader 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache OpenOffice through 4.1.16

Description:

An out-of-bounds Write vulnerability in Apache OpenOffice versions through 4.1.16 could allow an attacker to craft a Microsoft Word document that would crash the program, or otherwise corrupt other memory areas.

Users are recommended to upgrade to version 4.1.17, which fixes this issue.

Credit:

Yukihiro Nakamura (reporter)

References:

https://openoffice.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-59268

