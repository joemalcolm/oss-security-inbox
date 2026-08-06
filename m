X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/06/19
Message-ID: <535a28ae-dcd4-b9a6-7a95-0a0df0a30bc5@apache.org>
Date: Thu, 06 Aug 2026 10:21:01 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-57817: Apache CXF: The authorization code hash (c_hash) is not enforced for the hybrid OIDC flow 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache CXF (org.apache.cxf:cxf-rt-rs-security-sso-oidc) 4.2.0 before 4.2.3
- Apache CXF (org.apache.cxf:cxf-rt-rs-security-sso-oidc) 4.0.0 before 4.1.8
- Apache CXF (org.apache.cxf:cxf-rt-rs-security-sso-oidc) before 3.6.12

Description:

The OpenID Connect Core 1.0 specification mandates that the RP MUST validate the `c_hash` parameter when operating in the Hybrid Flow. If an Apache CXF RP is integrated with a non-compliant or misconfigured Identity Provider (IdP) that omits the `c_hash`, the RP becomes vulnerable to Authorization Code Substitution/Injection attacks. Users are recommended to upgrade to versions 4.2.3 or 4.1.8 or 3.6.12, which fix this issue.

Credit:

Guanping Zhang reported this vulnerability. (finder)

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-57817

