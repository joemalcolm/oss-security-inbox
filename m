X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/06/20
Message-ID: <64ac6139-4df0-2ccd-3262-8f76dcb8dea9@apache.org>
Date: Thu, 06 Aug 2026 10:27:03 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-57818: Apache CXF: OAuth2 Authorization Code Replay via TOCTOU in JCacheCodeDataProvider 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache CXF (org.apache.cxf:cxf-rt-rs-security-oauth2) 4.2.0 before 4.2.3
- Apache CXF (org.apache.cxf:cxf-rt-rs-security-oauth2) 4.0.0 before 4.1.8
- Apache CXF (org.apache.cxf:cxf-rt-rs-security-oauth2) before 3.6.12

Description:

A race condition in JCacheCodeDataProvider allows an attacker to redeem a single authorization code multiple times via concurrent requests, resulting in the issuance of multiple distinct, valid access tokens. Users are recommended to upgrade to versions 4.2.3, 4.1.8 or 3.6.12, which fix this issue.

Credit:

Guanping Zhang reported this vulnerability (finder)

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-57818

