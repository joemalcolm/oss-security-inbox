X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/01/7
Message-ID: <0067034d-e1fa-4f39-6ec1-653674da7158@apache.org>
Date: Thu, 01 Oct 2026 09:02:43 +0000
From: Abhishek Choudhary <shreemaanabhishek@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-94269: Apache APISIX: Servlet-style normalization creates a route/upstream authorization mismatch 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 4.0: 6.3 (medium) CVSS:4.0/AV:N/AC:L/AT:P/PR:N/UI:N/VC:N/VI:N/VA:N/SC:L/SI:L/SA:N

Affected versions:

- Apache APISIX 2.14.1 through 3.18.0

Description:

Use of Non-Canonical URL paths for authorization decisions vulnerability in Apache APISIX.



In some configurations where a permissive route overlaps a protected one, a crafted encoded path can reach an upstream endpoint that the matched route's policies were never meant to cover. A request that should have been rejected is served instead, giving unauthenticated access to a protected upstream endpoint. This issue affects Apache APISIX: from 2.14.1 through 3.18.0.



Users are recommended to upgrade to version 3.19.0, which fixes the issue.

Credit:

Ziyue (reporter)
shreemaan-abhishek (coordinator)
shreemaan-abhishek (remediation developer)

References:

https://apisix.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-94269

