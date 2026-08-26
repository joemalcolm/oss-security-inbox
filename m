X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/26/12
Message-ID: <2545a9f7-20bb-8014-f2e0-10f4b669994b@apache.org>
Date: Wed, 26 Aug 2026 14:51:22 +0000
From: Abhishek Choudhary <shreemaanabhishek@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-74848: Apache APISIX: Cross-user response poisoning in serverless plugins 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache APISIX 2.12.0 through 3.17.0

Description:

Inconsistent Interpretation of HTTP Requests ('HTTP Request/Response Smuggling') vulnerability in Apache APISIX.

An attacker could make other clients receive attacker-chosen or other users' responses on serverless-plugin routes.




This issue affects Apache APISIX: from 2.12.0 through 3.17.0.



Users are recommended to upgrade to version 3.18.0, which fixes the issue.

Credit:

Xclow3n (Rajat Raghav) (reporter)

References:

https://apisix.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-74848

