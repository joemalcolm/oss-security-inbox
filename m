X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/09/7
Message-ID: <adb7cb25-e600-1122-9ef1-1ca701bd7948@apache.org>
Date: Fri, 09 Oct 2026 09:56:20 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-79650: Apache CXF: OIDC RP Open Redirect 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache CXF (org.apache.cxf:cxf-rt-rs-security-sso-oidc) 4.2.0 before 4.2.4
- Apache CXF (org.apache.cxf:cxf-rt-rs-security-sso-oidc) 4.0.0 before 4.1.9
- Apache CXF (org.apache.cxf:cxf-rt-rs-security-sso-oidc) before 3.6.13

Description:

Apache CXF’s OIDC relying-party component could redirect users to an attacker-controlled URL after successful authentication. The issue occurs because attacker-controlled state parameters are preserved and later used as redirect targets without validating that the final decoded URI belongs to the RP’s origin. Both directly encoded and double-encoded external URLs can trigger the issue, depending on which validation path is used. Users are recommended to upgrade to versions 4.2.4 or 4.1.9 or 3.6.13, which fix this issue.

Credit:

Guanping Zhang reported this vulnerability (finder)

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-79650

