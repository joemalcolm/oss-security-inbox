X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/11/12
Message-ID: <f34a839b-8f70-aaf9-c7ab-85e2b4c16e56@apache.org>
Date: Thu, 11 Jun 2026 17:08:25 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-50645: Apache CXF: No restriction on attachment headers per message 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache CXF (org.apache.cxf:cxf-core) 4.2.0 before 4.2.2
- Apache CXF (org.apache.cxf:cxf-core) before 4.1.7

Description:

There is no restriction on the amount of attachment headers that a message can contain when being deserialized by Apache CXF, which can lead to uncontrolled resource consumption or a denial of service attack. Users are recommended to upgrade to versions 4.2.2 or 4.1.7, which fix this issue by imposing a maximum default of 500 attachments per message.

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-50645

