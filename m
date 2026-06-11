X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/11/3
Message-ID: <95217cb7-65ca-1ece-6430-3475c927a42e@apache.org>
Date: Thu, 11 Jun 2026 16:49:55 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-50623: Apache CXF: Authentication Bypass in OAuth2 TokenIntrospectionService 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache CXF (org.apache.cxf:cxf-rt-rs-security-oauth2) 4.2.0 before 4.2.2
- Apache CXF (org.apache.cxf:cxf-rt-rs-security-oauth2) before 4.1.7

Description:

An authentication bypass vulnerability exists in the OAuth2 TokenIntrospectionService in Apache CXF. Due to a missing 'throw' keyword in the security context check, the introspection endpoint (/services/oauth2/introspect) can be accessed by any unauthenticated network attacker. However note that this is a safeguard only in the case that someone forgot to enable authentication on the service. Users are recommended to upgrade to version 4.2.2 or 4.1.7, which fixes this issue.

Credit:

Guanping Zhang reported this vulnerability. (finder)

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-50623

