X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/09/4
Message-ID: <4c676f67-ade2-eb22-3883-460cdd5e3349@apache.org>
Date: Fri, 09 Oct 2026 09:51:14 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-71575: Apache CXF: Inoperative max_age authentication-freshness check in OidcClientCodeRequestFilter 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache CXF (org.apache.cxf:cxf-rt-rs-security-sso-oidc) 4.2.0 before 4.2.4
- Apache CXF (org.apache.cxf:cxf-rt-rs-security-sso-oidc) 4.0.0 before 4.1.9
- Apache CXF (org.apache.cxf:cxf-rt-rs-security-sso-oidc) before 3.6.13

Description:

The max_age authentication-freshness check in OidcClientCodeRequestFilter was inoperative due to a milliseconds/seconds unit mismatch and an inverted comparison polarity. Any relying party using setMaxAgeOffset to enforce re-authentication would silently accept sessions of any age, bypassing step-up authentication policies. Users are recommended to upgrade to versions 4.2.4 or 4.1.9 or 3.6.13, which fix this issue.

Credit:

Guanping Zhang reported this vulnerability (finder)

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-71575

