X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/09/8
Message-ID: <efc949fb-7505-da50-33a2-77c3e23ecc49@apache.org>
Date: Fri, 09 Oct 2026 09:57:13 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-86463: Apache CXF: FIQL Query Parser Denial of Service 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache CXF (org.apache.cxf:cxf-rt-rs-extension-search) 4.2.0 before 4.2.4
- Apache CXF (org.apache.cxf:cxf-rt-rs-extension-search) 4.0.0 before 4.1.9
- Apache CXF (org.apache.cxf:cxf-rt-rs-extension-search) before 3.6.13

Description:

Apache CXF's FIQL query parser has a vulnerability in how it searches for operators in query expressions. The search pattern can get stuck trying many combinations when it encounters a long string without an operator, causing the parser to consume excessive CPU time. An attacker can send a crafted query to make the server use up CPU resources, potentially slowing down or stopping other requests. The fix was to limit FIQL expressions to 4 KiB by default, preventing attackers from sending extremely long inputs while still allowing normal queries.

Users are recommended to upgrade to versions 4.2.4 or 4.1.9 or 3.6.13, which fix this issue.

Credit:

Mike Read (github.com/Michael-JRead) (finder)

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-86463

