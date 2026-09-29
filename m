X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/29/17
Message-ID: <60806c15-9619-3417-7c7f-d76cd5d055a9@apache.org>
Date: Tue, 29 Sep 2026 11:03:26 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-102497: Apache XMLSchema: Denial of service through cyclic schema definitions in the schema walker 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache XMLSchema before 2.3.3

Description:

The Apache XmlSchema walker (xmlschema-walker) doesn't detect cycles in type derivation, substitution groups, model groups or attribute groups. A malicious schema with such a cycle can make the walker recurse until the stack overflows, causing a denial of service.

Users are recommended to upgrade to version 2.3.3, which fixes this issue.

Credit:

This issue was found using Claude agents to study the security of open-source projects (finder)

References:

https://ws.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-102497

