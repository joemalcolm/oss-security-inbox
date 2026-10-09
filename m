X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/09/5
Message-ID: <92da755c-35c5-35b1-2123-af4d42d1065f@apache.org>
Date: Fri, 09 Oct 2026 09:52:15 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-73179: Apache CXF: JPA authorization-code consume is non-atomic 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache CXF (org.apache.cxf:cxf-rt-rs-security-oauth2) 4.2.0 before 4.2.4
- Apache CXF (org.apache.cxf:cxf-rt-rs-security-oauth2) 4.0.0 before 4.1.9
- Apache CXF (org.apache.cxf:cxf-rt-rs-security-oauth2) before 3.6.13

Description:

Improper enforcement of single-use authorization code semantics in the JPA OAuth2 authorization code grant provider in Apache CXFallows a remote attacker to obtain multiple valid access tokens from a single authorization code via concurrent token exchange requests that race the non-atomic find-then-delete operation against a shared relational database under READ_COMMITTED isolation. Users are recommended to upgrade to versions 4.2.4 or 4.1.9 or 3.6.13, which fixes this issue.

Credit:

Guanping Zhang reported this vulnerability (finder)

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-73179

