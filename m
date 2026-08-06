X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/06/22
Message-ID: <19936976-1a28-6efb-cad5-44dc46bf6122@apache.org>
Date: Thu, 06 Aug 2026 10:42:10 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-63687: Apache CXF: JwtRequestCodeFilter silently overrides outer PKCE and nonce parameters 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache CXF (org.apache.cxf:cxf-rt-rs-security-oauth2) 4.2.0 before 4.2.3
- Apache CXF (org.apache.cxf:cxf-rt-rs-security-oauth2) 4.0.0 before 4.1.8
- Apache CXF (org.apache.cxf:cxf-rt-rs-security-oauth2) before 3.6.12

Description:

Apache CXF's JwtRequestCodeFilter copies all claims from a signed request JWT into the authorization parameter map without excluding security-sensitive parameters. A client that can produce a validly-signed request JWT (e.g., one whose client_secret is known or compromised) can thereby substitute the code_challenge, code_challenge_method, nonce, and state values that were set in the outer HTTP request, undermining PKCE integrity and OpenID Connect replay protection. Users are recommended to upgrade to versions 4.2.3 or 4.1.8 or 3.6.12, which fix this issue.

Credit:

Guanping Zhang reported this vulnerability. (finder)

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-63687

