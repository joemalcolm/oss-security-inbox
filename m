X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/01/6
Message-ID: <22a4022a-677b-489c-6ef4-33f011610c0b@apache.org>
Date: Thu, 01 Oct 2026 09:00:16 +0000
From: Abhishek Choudhary <shreemaanabhishek@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-94250: Apache APISIX: Batch response aggregation can exhaust worker memory 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 4.0: 8.2 (high) CVSS:4.0/AV:N/AC:L/AT:P/PR:N/UI:N/VC:N/VI:N/VA:H/SC:N/SI:N/SA:N

Affected versions:

- Apache APISIX 1.3.0 through 3.18.0

Description:

Allocation of resources without limits or throttling vulnerability in batch-requests plugin in Apache APISIX.



An unauthenticated caller can drive a gateway worker into OOM via a route where the batch-requests plugin is used and the batch endpoint is publicly exposed. This issue affects Apache APISIX: from 1.3.0 through 3.18.0.



Users are recommended to upgrade to version 3.19.0, which fixes the issue.

Credit:

Ziyue (reporter)
shreemaan-abhishek (remediation developer)
shreemaan-abhishek (coordinator)

References:

https://apisix.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-94250

