X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/11/7
Message-ID: <c91c9777-7841-6156-b046-f737a8e0c730@apache.org>
Date: Thu, 11 Jun 2026 16:56:27 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-50630: Apache CXF: OAuth2: HTTP Response Splitting via WWW-Authenticate Realm Injection 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache CXF (org.apache.cxf:cxf-rt-rs-security-oauth2) 4.2.0 before 4.2.2
- Apache CXF (org.apache.cxf:cxf-rt-rs-security-oauth2) before 4.1.7

Description:

A CRLF injection vulnerability exists in the OAuth2 AuthorizationUtils class. When constructing the WWW-Authenticate response header, the 'realm' parameter is concatenated without sanitizing Carriage Return (CR) and Line Feed (LF) characters. If an attacker can control the realm value, they can inject arbitrary HTTP headers or split the HTTP response entirely. Users are recommended to upgrade to versions 4.2.2 or 4.1.7, which fixes this issue.

Credit:

Guanping Zhang reported this vulnerability. (finder)

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-50630

