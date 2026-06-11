X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/11/2
Message-ID: <7328499d-64fd-62ba-7ac1-dad16d7d26e8@apache.org>
Date: Thu, 11 Jun 2026 16:47:46 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-49875: Apache CXF: XML External Entity (XXE) Injection in W3CMultiSchemaFactory and EndpointReferenceUtils 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache CXF (org.apache.cxf:cxf-core) 4.2.0 before 4.2.2
- Apache CXF (org.apache.cxf:cxf-core) before 4.1.7

Description:

Apache CXF's EndpointReferenceUtils and W3CMultiSchemaFactory classes construct a SAXParserFactory without the necessary JAXP hardening configurations, enabling out-of-band (OOB) 
external entity resolution. Users are recommended to upgrade to versions 4.2.2 or 4.1.7, which fix this issue.

Credit:

Venkatraman Kumar (r3dw0lfsec), Securin (finder)

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-49875

