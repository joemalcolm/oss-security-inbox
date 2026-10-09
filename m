X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/09/9
Message-ID: <b5ec7680-7fd0-f39d-7d5c-28da014cacde@apache.org>
Date: Fri, 09 Oct 2026 09:59:48 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-97468: Apache CXF: Authentication bypass via weak cache keys for validated STS tokens 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache CXF 4.2.0 before 4.2.4
- Apache CXF 4.0.0 before 4.1.9
- Apache CXF before 3.6.13

Description:

Apache CXF's STSTokenValidator and Security Token Service (STS) cached validated security tokens under a non-cryptographic 32-bit hash of the token (Java Arrays.hashCode/hashCode()), and treated a cache hit as proof that the presented token had already been validated. An attacker could craft a token (for example a UsernameToken or a self-signed SAML Assertion) whose hash collides with a cached entry. The token would then be accepted without password validation, signature trust verification or a call to the STS. This could let the attacker authenticate as another user and, through STS token validation or renewal, obtain STS-signed tokens for that identity.
Users are recommended to upgrade to versions 4.2.4 or 4.1.9 or 3.6.13, which fix this issue.

Credit:

MopMonk-AI (finder)

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-97468

