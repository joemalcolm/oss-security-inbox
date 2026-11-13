X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/13/7
Message-ID: <7a2fcf15-5fd0-817a-69c5-55ac08d19ada@apache.org>
Date: Fri, 13 Nov 2026 15:50:36 +0000
From: Abhishek Choudhary <shreemaanabhishek@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-124680: Apache APISIX: Route-level authentication bypass via path normalization mismatch between routing and upstream forwarding 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 4.0: 7.0 (high) CVSS:4.0/AV:N/AC:L/AT:P/PR:N/UI:N/VC:N/VI:N/VA:N/SC:H/SI:H/SA:N

Affected versions:

- Apache APISIX 0.9 through 3.19.0

Description:

Interpretation Conflict, resulting in (Incorrect Authorization) vulnerability in Apache APISIX.



An unauthenticated client can reach upstream paths protected
by a route-level auth plugin when a route without auth exists on the
same upstream and the upstream does not collapse encoded dot segments.



This issue affects Apache APISIX: from 0.9 through 3.19.0.



Users are recommended to upgrade to version 3.20.0, which fixes the issue.

Credit:

Uttej Badwane (reporter)
shreemaan-abhishek (coordinator)
shreemaan-abhishek (remediation developer)

References:

https://apisix.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-124680

