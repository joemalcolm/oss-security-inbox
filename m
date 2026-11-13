X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/13/11
Message-ID: <28721e98-b23e-f84c-0bcb-d1c4eec677d9@apache.org>
Date: Fri, 13 Nov 2026 15:50:32 +0000
From: Abhishek Choudhary <shreemaanabhishek@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-124726: Apache APISIX: openapi-to-mcp tool call can reach an API path the document does not declare 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 4.0: 6.9 (medium) CVSS:4.0/AV:N/AC:L/AT:P/PR:N/UI:N/VC:N/VI:N/VA:N/SC:H/SI:L/SA:N

Affected versions:

- Apache APISIX 3.19.0 before 3.20.0

Description:

Relative Path Traversal, with Unintended Proxy vulnerability in Apache APISIX.



A caller of the MCP endpoint can invoke endpoints the OpenAPI document
never declared, under the declared tool's HTTP method, using the credentials the
Route adds. This issue affects Apache APISIX: from 3.19.0 before 3.20.0.



Users are recommended to upgrade to version 3.20.0, which fixes the issue.

Credit:

Javier García Herrera (reporter)
shreemaan-abhishek (coordinator)
shreemaan-abhishek (remediation developer)

References:

https://apisix.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-124726

