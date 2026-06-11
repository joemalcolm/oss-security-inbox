X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/11/4
Message-ID: <8bab9e61-e6f5-be2b-8e1f-6639975adc96@apache.org>
Date: Thu, 11 Jun 2026 16:52:00 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-50627: Apache CXF: OAuth2: Missing JWT Audience and Issuer Validation in Access Token Validator 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache CXF (org.apache.cxf:cxf-rt-rs-security-oauth2) 4.2.0 before 4.2.2
- Apache CXF (org.apache.cxf:cxf-rt-rs-security-oauth2) before 4.1.7

Description:

The JwtAccessTokenValidator class in Apache CXF fails to validate the 'aud' (Audience) claims of incoming JWT access tokens. This allows a JWT issued for one Resource Server to be successfully replayed against a completely different Resource Server, leading to Token Confusion/Routing attacks. Users are recommended to upgrade to versions 4.2.2 or 4.1.7, which fixes this issue.

Credit:

Guanping Zhang reported this vulnerability. (finder)

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-50627

