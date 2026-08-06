X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/06/21
Message-ID: <d1e8a5fa-d3f9-ab34-9e21-192e7a7de07f@apache.org>
Date: Thu, 06 Aug 2026 10:29:33 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-61466: Apache CXF: OAuth2 Dynamic Client Registration Scope Self-Escalation 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache CXF (org.apache.cxf:cxf-rt-rs-security-oauth2) before 3.6.12
- Apache CXF (org.apache.cxf:cxf-rt-rs-security-oauth2) 4.0.0 before 4.1.8
- Apache CXF (org.apache.cxf:cxf-rt-rs-security-oauth2) 4.2.0 before 4.2.3

Description:

In Apache CXF's OAuth2 Dynamic Client Registration endpoint, the authorization server accepts and stores the `scope` value supplied in the client registration request verbatim, without validating it against an AS-defined allowlist. This could lead to a client self-assigning privileged scopes at registration time. Users are recommended to upgrade to versions 4.2.3 or 4.1.8 or 3.6.12, which fix this issue.

Credit:

Guanping Zhang reported this vulnerability. (finder)

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-61466

