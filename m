X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/06/14
Message-ID: <9eb44b90-212c-fa14-7d88-7683c85c4e0c@apache.org>
Date: Thu, 06 Aug 2026 09:59:13 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-54225: Apache CXF: Denial of Service attack via large attachments 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache CXF (org.apache.cxf:cxf-core) 4.2.0 before 4.2.3
- Apache CXF (org.apache.cxf:cxf-core) 4.0.0 before 4.1.8
- Apache CXF (org.apache.cxf:cxf-core) before 3.6.12

Description:

Apache CXF allows to control the maximum attachment size via the "attachment-max-size". Prior to Apache CXF 4.2.3 and 4.1.8 and 3.6.12, there was no default placed on this size, meaning that a denial of service attack is possible if the user doesn't explicitly set the limit. Users should update to Apache CXF 4.2.3 or 4.1.8 or 3.6.12 which fixes this problem by imposing a default attachment size limit of 50mb.

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-54225

