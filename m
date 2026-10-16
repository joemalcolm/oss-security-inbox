X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/16/11
Message-ID: <b4be6b26-a218-e6eb-599a-7c16f342ed5f@apache.org>
Date: Fri, 16 Oct 2026 02:46:03 +0000
From: Li Yang <liyang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-108709: Apache Kylin: Unauthenticated Metadata Broadcast (inside in-house network) 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Kylin 4.0.4 through 5.0.4

Description:

Authentication bypass within in-house network in Apache Kylin. Impact most to the kylin services that are directly exposed to public network, which is not common. In-house kylin deployments are mostly not impacted.



This issue affects Apache Kylin: from 4.0.4 through 5.0.4.



Users are recommended to upgrade to version 5.0.5, which fixes the issue.

This issue is being tracked as KYLIN-6107 

Credit:

RunningSnail (finder)

References:

https://kylin.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-108709
https://issues.apache.org/jira/browse/KYLIN-6107

