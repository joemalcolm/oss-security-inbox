X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/16/8
Message-ID: <b7a8a13c-64c3-7481-c6c8-1f20bb009f8d@apache.org>
Date: Fri, 16 Oct 2026 02:42:38 +0000
From: Li Yang <liyang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-69076: Apache Kylin: Unauthorized cross-project job discard 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Kylin 4..0.0 through 5.0.4

Description:

Exposure of Job Discard to an Unauthorized Actor vulnerability in Apache Kylin. Impact most to the kylin services that are directly exposed to public network, which is not common. In-house kylin deployments are mostly not impacted.



This issue affects Apache Kylin: from 4 through 5.0.4.



Users are recommended to upgrade to version 5.0.5, which fixes the issue.

Credit:

Yicheng Yu (finder)
Haoran Zhao (finder)
Lei Zhang (finder)

References:

https://kylin.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-69076

