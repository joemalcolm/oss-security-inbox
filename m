X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/09/11
Message-ID: <698953d8-270d-fa46-62c5-fd79f0b8ba37@apache.org>
Date: Fri, 09 Oct 2026 10:05:00 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-100227: Apache CXF: XML Signature wrapping in JAX-RS XML Security 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache CXF 4.2.0 before 4.2.4
- Apache CXF 4.0.0 before 4.1.9
- Apache CXF before 3.6.13

Description:

Improper Verification of Cryptographic Signature vulnerability in Apache CXF's JAX-RS XML Security module. The JAX-RS XML Signature interceptors (XmlSigInHandler, XmlSigInInterceptor and the streaming XmlSecInInterceptor) did not ensure that the XML passed to the application was covered by the signature. An attacker with any document signed by a trusted key could wrap it in unsigned content, which the application would then treat as signed.
Users are recommended to upgrade to versions 4.2.4 or 4.1.9 or 3.6.13, which fix this issue.

Credit:

This issue was found using Claude agents to study the security of open-source projects and independently by Guanping Zhang (finder)

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-100227

