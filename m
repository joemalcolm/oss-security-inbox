X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/29/16
Message-ID: <7ad8e6fc-8e69-efbb-81af-70fdca05abac@apache.org>
Date: Tue, 29 Sep 2026 11:03:17 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-102496: Apache XMLSchema: Denial of service through deeply nested schema structures 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache XMLSchema before 2.3.3

Description:

Apache XmlSchema doesn't limit how deeply schema structures can be nested when it builds its schema model, so a malicious schema can make parsing recurse until the stack overflows. This causes a denial of service.
Users are recommended to upgrade to version 2.3.3, which fixes this issue.

Credit:

This issue was found using Claude agents to study the security of open-source projects (finder)

References:

https://ws.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-102496

