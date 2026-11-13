X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/13/8
Message-ID: <751c3617-9767-b9f7-5991-aafd1dd2c87a@apache.org>
Date: Fri, 13 Nov 2026 15:50:36 +0000
From: Abhishek Choudhary <shreemaanabhishek@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-124716: Apache APISIX: authz-keycloak authorization scope mismatch 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 4.0: 6.4 (medium) CVSS:4.0/AV:N/AC:L/AT:N/PR:L/UI:N/VC:N/VI:N/VA:N/SC:H/SI:H/SA:N

Affected versions:

- Apache APISIX 1.4.0 through 3.19.0

Description:

Incorrect Authorization vulnerability in Apache APISIX.



An authenticated user who holds any one of a route's required permissions or scopes can reach the protected upstream without the others, including HTTP methods the authorization server denied.



This issue affects Apache APISIX: from 1.4.0 through 3.19.0.



Users are recommended to upgrade to version 3.20.0, which fixes the issue.

Credit:

Erjey (Independent Security Researcher) (reporter)
shreemaan-abhishek (coordinator)
shreemaan-abhishek (remediation developer)

References:

https://apisix.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-124716

