X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/11/8
Message-ID: <03aaf108-313d-dcbc-a775-f0b5b1ed2aab@apache.org>
Date: Thu, 11 Jun 2026 17:00:01 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-50631: Apache CXF: OAuth2: TOCTOU Race Condition in Refresh Token Processing 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache CXF (org.apache.cxf:cxf-rt-rs-security-oauth2) 4.2.0 before 4.2.2
- Apache CXF (org.apache.cxf:cxf-rt-rs-security-oauth2) before 4.1.7

Description:

A race condition in AbstractOAuthDataProvider allows concurrent requests using the same Refresh Token to bypass single-use semantics and generate multiple valid Access Tokens, when 'recycleRefreshTokens' is set to false. A leaked refresh token can be replayed concurrently by multiple attackers or threads. Users are recommended to upgrade to versions 4.2.2 or 4.1.7, which fixes this issue.

Credit:

Guanping Zhang reported this vulnerability. (finder)

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-50631

