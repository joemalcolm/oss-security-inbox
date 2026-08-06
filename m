X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/06/23
Message-ID: <4b9411f2-a9ad-e322-08eb-d542f5cb700d@apache.org>
Date: Thu, 06 Aug 2026 10:44:32 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-65583: Apache CXF: Self-issued ID token claims validation skipped 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache CXF (org.apache.cxf:cxf-rt-rs-security-sso-oidc) 4.2.0 before 4.2.3
- Apache CXF (org.apache.cxf:cxf-rt-rs-security-sso-oidc) 4.0.0 before 4.1.8
- Apache CXF (org.apache.cxf:cxf-rt-rs-security-sso-oidc) before 3.6.12

Description:

Apache CXF’s OIDC relying-party token validation could accept self-issued ID tokens without enforcing required claim checks (issuer/subject/audience/time and sub_jwk binding), enabling authentication bypass with crafted tokens. However, note that self-issued ID tokens are not accepted by default in the validator. Users are recommended to upgrade to versions 4.2.3 or 4.1.8 or 3.6.12, which fixes this issue.

Credit:

Guanping Zhang reported this vulnerability. (finder)

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-65583

