X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/29/15
Message-ID: <de033805-c3fa-ce6a-541b-bae6d1df662e@apache.org>
Date: Tue, 29 Sep 2026 11:02:57 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-102495: Apache XMLSchema: Denial of service through unbounded recursion when resolving schema imports and includes 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache XMLSchema before 2.3.3

Description:

Apache XmlSchema doesn't limit how deeply schema imports and includes can be nested, so a malicious schema can make parsing recurse until the stack overflows. This causes a denial of service.
Users are recommended to upgrade to version 2.3.3, which fixes this issue.

Credit:

This issue was found using Claude agents to study the security of open-source projects (finder)

References:

https://ws.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-102495

