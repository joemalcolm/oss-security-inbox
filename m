X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/09/10
Message-ID: <ff5a548e-8eec-8dbb-e965-180538191ff0@apache.org>
Date: Fri, 09 Oct 2026 10:02:24 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-97791: Apache CXF: STSTokenValidator can accept untrusted SAML assertions because it shares validation state between requests 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache CXF 4.2.0 before 4.2.4
- Apache CXF 4.0.0 before 4.1.9
- Apache CXF before 3.6.13

Description:

In Apache CXF, STSTokenValidator checks whether a SAML assertion is signed by a trusted certificate before deciding to send it to the STS. That result was stored in one object shared by all requests, so one request could read another's result. A remote, unauthenticated attacker could send a forged assertion signed with an untrusted certificate while legitimate requests were being processed, and it could be accepted as trusted without ever reaching the STS. Only services that use STSTokenValidator to validate SAML tokens without alwaysValidateToSts set are affected. 
Users are recommended to upgrade to versions 4.2.4 or 4.1.9 or 3.6.13, which fix this issue.

Credit:

MopMonk-AI (finder)

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-97791

