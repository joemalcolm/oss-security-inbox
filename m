X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/13/9
Message-ID: <84d97a66-08e2-6bc1-abec-ce2cfaf546b1@apache.org>
Date: Fri, 13 Nov 2026 15:50:34 +0000
From: Abhishek Choudhary <shreemaanabhishek@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-124719: Apache APISIX: identity spoofing in openapi-to-mcp 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 4.0: 2.3 (low) CVSS:4.0/AV:N/AC:L/AT:P/PR:L/UI:N/VC:N/VI:N/VA:N/SC:L/SI:L/SA:N

Affected versions:

- Apache APISIX 3.19.0 before 3.20.0

Description:

Authentication bypass by spoofing vulnerability in Apache APISIX.



When a Route's configured headers carry a caller identity and the OpenAPI document declares
the same header, a caller can act as another identity against the
upstream API. This issue affects Apache APISIX: from 3.19.0 before 3.20.0.



Users are recommended to upgrade to version 3.20.0, which fixes the issue.

Credit:

Kai (GitHub: ha2fde) (reporter)
shreemaan-abhishek (coordinator)

References:

https://apisix.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-124719

