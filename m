X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/09/13
Message-ID: <19ab71b6-6f6f-66fa-e002-aa91c00cd145@apache.org>
Date: Fri, 09 Oct 2026 10:06:42 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-107938: Apache CXF: The Netty HTTP client transport does not perform TLS hostname verification. 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache CXF 4.2.0 before 4.2.4
- Apache CXF 4.0.0 before 4.1.9
- Apache CXF before 3.6.13

Description:

In Apache CXF, the Netty-based HTTP client transport (cxf-rt-transports-http-netty-client) did not verify that the hostname in the server’s TLS certificate matched the host being called. This applied over both HTTP/1.1 and HTTP/2, even when disableCNCheck was left at its default value of false. The certificate chain was validated against the configured trust store, but the endpoint’s identity was not. A network attacker able to intercept traffic could present any certificate trusted by the client, such as a publicly issued certificate for a domain they control, and impersonate the target service. They could then read or modify the exchanged messages, including credentials. 
Users are recommended to upgrade to versions 4.2.4 or 4.1.9 or 3.6.13, which fix this issue.

Credit:

This issue was found using Claude agents to study the security of open-source projects (finder)

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-107938

