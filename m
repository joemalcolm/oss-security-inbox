X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/16/9
Message-ID: <496371db-af6d-04ab-b275-9c2aafc86df9@apache.org>
Date: Fri, 16 Oct 2026 02:43:17 +0000
From: Li Yang <liyang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-69077: Apache Kylin: JobController allows unauthorized cross-project manipulation 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Kylin 4..0.0 through 5.0.4

Description:

Exposure of unauthorized cross-project job manipulation vulnerability in Apache Kylin. Impact most to the kylin services that are directly exposed to public network, which is not common. In-house kylin deployments are mostly not impacted.



This issue affects Apache Kylin: from 4 through 5.0.4.



Users are recommended to upgrade to version 5.0.5, which fixes the issue.

Credit:

Harry <h9408400@...il.com> (finder)

References:

https://kylin.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-69077

