X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/06/16
Message-ID: <047074fe-da98-4160-e478-75b8f6320471@apache.org>
Date: Thu, 06 Aug 2026 10:09:43 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-64958: Apache CXF: Denial of service via message header attachments 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache CXF (org.apache.cxf:cxf-core) 4.2.0 before 4.2.3
- Apache CXF (org.apache.cxf:cxf-core) 4.0.0 before 4.1.8
- Apache CXF (org.apache.cxf:cxf-core) before 3.6.12

Description:

An incomplete fix for CVE-2026-50645 means that it is still possible to perform a denial of service attack on Apache CXF by sending a message with many attachment headers. Users are recommended to upgrade to versions 4.2.3 or 4.1.8 or 3.6.12, which fix this issue.

Credit:

Markus Vogl, RISE GmbH (finder)

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-64958

