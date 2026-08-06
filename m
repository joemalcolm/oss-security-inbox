X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/06/24
Message-ID: <373837d0-0737-ffb5-05ae-278c4b97bfcf@apache.org>
Date: Thu, 06 Aug 2026 10:46:55 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-68079: Apache CXF: DefaultEncryptingCodeDataProvider allows unlimited authorization code replay 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache CXF (org.apache.cxf:cxf-rt-rs-security-oauth2) 4.2.0 before 4.2.3
- Apache CXF (org.apache.cxf:cxf-rt-rs-security-oauth2) 4.0.0 before 4.1.8
- Apache CXF (org.apache.cxf:cxf-rt-rs-security-oauth2) before 3.6.12

Description:

In Apache CXF's DefaultEncryptingCodeDataProvider, a captured authorization code can be redeemed an unlimited number of times due to a flaw in the implementation of the removeCodeGrant functionality. This violates the RFC requirement that "The authorization code MUST NOT be used more than once." Users are recommended to upgrade to versions 4.2.3 or 4.1.8 or 3.6.12, which fix this issue.

Credit:

Guanping Zhang reported this vulnerability (finder)

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-68079

