X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/11/11
Message-ID: <325a5e08-8747-5c35-a378-5a81694599e8@apache.org>
Date: Thu, 11 Jun 2026 17:05:47 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-50634: Apache CXF: WS JSON request filter trusts metadata from an unvalidated first signature entry 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache CXF (org.apache.cxf:cxf-rt-rs-security-jose-jaxrs) 4.2.0 before 4.2.2
- Apache CXF (org.apache.cxf:cxf-rt-rs-security-jose-jaxrs) before 4.1.7

Description:

A vulnerability in Apache CXF's JwsJsonContainerRequestFilter can be exploited to cause CXF to process metadata that was not authenticated by the accepted signature. This can bypass the application's assumption

that accepted `Content-Type` or protected HTTP-header metadata came from a verified signature entry, and may steer downstream JAX-RS entity parsing or signed-header consistency checks. Users are recommended to upgrade to versions 4.2.2 or 4.1.7, which fix this issue.

Credit:

Mitchell Benjamin / Revamp Studio. (finder)

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-50634

