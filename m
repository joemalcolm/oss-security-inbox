X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/01/3
Message-ID: <ec220e08-3d90-93fe-0a3c-bd62474ac581@apache.org>
Date: Thu, 01 Oct 2026 08:55:30 +0000
From: Abhishek Choudhary <shreemaanabhishek@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-82806: Apache APISIX: cross-request permission pollution via static permission list mutation 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 4.0: 5.3 (medium) CVSS:4.0/AV:N/AC:L/AT:N/PR:L/UI:N/VC:N/VI:N/VA:N/SC:L/SI:L/SA:N

Affected versions:

- Apache APISIX 2.3.0 before 3.7.0

Description:

Exposure of data element to wrong session vulnerability in Apache APISIX.



This issue affects Apache APISIX: from 2.3.0 before 3.7.0.



Under a supported authz-keycloak configuration, a request's authorization scope could persist into later requests on the same route, leading to unintended authorization expansion and inconsistent access-control decisions.



Users are recommended to upgrade to version 3.7.0 or higher, which fixes the issue.

Credit:

Lok (reporter)

References:

https://apisix.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-82806

