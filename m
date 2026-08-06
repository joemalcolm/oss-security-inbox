X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/06/25
Message-ID: <cbfd5ad8-1cdd-ccda-c299-2d0073dd3fdf@apache.org>
Date: Thu, 06 Aug 2026 10:49:28 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-68481: Apache CXF: Revocation bypass in DefaultEncryptingOAuthDataProvider 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache CXF (org.apache.cxf:cxf-rt-rs-security-oauth2) 4.2.0 before 4.2.3
- Apache CXF (org.apache.cxf:cxf-rt-rs-security-oauth2) 4.0.0 before 4.1.8
- Apache CXF (org.apache.cxf:cxf-rt-rs-security-oauth2) before 3.6.12

Description:

In Apache CXF's DefaultEncryptingOAuthDataProvider, revoked access tokens still decrypt successfully, and TokenIntrospectionService reports active:true. The same applies to refresh tokens. This violates the RFC stipulations that 'The authorization server MUST invalidate the token.' and 'introspection of a revoked token MUST return {"active":false}'. Users are recommended to upgrade to versions 4.2.3 or 4.1.8 or 3.6.12, which fix this issue.

Credit:

Guanping Zhang reported this vulnerability (finder)

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-68481

