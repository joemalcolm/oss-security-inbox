X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/11/10
Message-ID: <6949155b-de76-3de3-e380-d994d20b5a61@apache.org>
Date: Thu, 11 Jun 2026 17:03:54 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-50633: Apache CXF: JNDI Injection vulnerability in DispatchMDBMessageListenerImpl 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache CXF (org.apache.cxf:cxf-integration-jca) 4.2.0 before 4.2.2
- Apache CXF (org.apache.cxf:cxf-integration-jca) before 4.1.7

Description:

A JNDI Injection vulnerability has been discovered in Apache CXF's JCA integration module, which can allow for code execution, if an attacker is able to manipulate the JCA deployment descriptor (ra.xml) or runtime activation parameters. Users are recommended to upgrade to versions 4.2.2 or 4.1.7, which fixes this issue.

Credit:

Venkatraman Kumar (r3dw0lfsec), Securin (finder)

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-50633

