X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/06/17
Message-ID: <3b288212-4a2f-9765-e0fb-871b5aecf661@apache.org>
Date: Thu, 06 Aug 2026 10:14:02 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-65432: Apache CXF: XXE via WSDL/XSD import parsing 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache CXF (org.apache.cxf:cxf-rt-wsdl) 4.2.0 before 4.2.3
- Apache CXF (org.apache.cxf:cxf-rt-wsdl) 4.0.0 before 4.1.8
- Apache CXF (org.apache.cxf:cxf-rt-wsdl) before 3.6.12

Description:

Apache CXF reads a top-level WSDL through its hardened StaxUtils path, which disables XML DTDs and external entities. However, any <wsdl:import> or <xsd:import> referenced from that top-level WSDL is handed off to WSDL4J, which does not disable DOCTYPE declarations or external entities. As a result, the protections applied to the top-level document do not extend to imported documents, leaving imported WSDL/XSD content vulnerable to XML External Entity (XXE) attacks. Users are recommended to upgrade to versions 4.2.3 or 4.1.8 or 3.6.12, which fix this issue.

Credit:

Reported by n0mi1k (finder)

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-65432

