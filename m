X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/09/14
Message-ID: <db1a9edb-54ba-9844-c385-de74e376f168@apache.org>
Date: Fri, 09 Oct 2026 10:10:49 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-108039: Apache CXF: Prevent unbounded XML document size in StaxUtils by adding default element and character limits 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache CXF 4.2.0 before 4.2.4
- Apache CXF 4.0.0 before 4.1.9
- Apache CXF before 3.6.13

Description:

By default, StaxUtils placed no limit on the total number of elements or the total number of characters in an XML document. A very large request could therefore use a lot of memory and CPU during parsing, especially where CXF builds a DOM from the input (for example SAAJ or WS-Security), and could cause a denial of service when no request size limit was configured. Both limits now have defaults: the maximum element count is 100 × maxChildElements (5,000,000 by default), and the maximum document size is 256M characters. Applications that process larger documents can raise the limits with the org.apache.cxf.stax.maxElementCount and org.apache.cxf.stax.maxXMLCharacters properties.
Users are recommended to upgrade to versions 4.2.4 or 4.1.9 or 3.6.13, which fix this issue.

Credit:

Wanxin Yin (yaklang.io) <yhellow123456@...il.com> (finder)

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-108039

