X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/16/14
Message-ID: <b2d0d573-9a03-d6bf-20fb-9cf6b76b9537@apache.org>
Date: Fri, 16 Oct 2026 03:03:11 +0000
From: Li Yang <liyang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-108764: Apache Kylin: job-driver UI proxy SSRF 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Kylin 4.0.0 through 5.0.4

Description:

Server-Side request forgery (SSRF) vulnerability in Apache Kylin. Impact most to the kylin job service that are directly exposed to public network, which is not common. In-house kylin deployments are mostly not impacted.



This issue affects Apache Kylin: from 4.0.0 through 5.0.4.



Users are recommended to upgrade to version 5.0.5, which fixes the issue.

This issue is being tracked as KYLIN-6104 

Credit:

n0mi1k Security (finder)

References:

https://kylin.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-108764
https://issues.apache.org/jira/browse/KYLIN-6104

