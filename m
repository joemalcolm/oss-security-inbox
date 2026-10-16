X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/16/15
Message-ID: <c4473900-0218-918a-6183-6595d2ce64b7@apache.org>
Date: Fri, 16 Oct 2026 03:03:55 +0000
From: Li Yang <liyang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-108766: Apache Kylin: missing JDBC-config authorization 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Kylin 4.0.0 through 5.0.4

Description:

Missing authorization on jdbc source config update in Apache Kylin. Impact most to the kylin services that are directly exposed to public network, which is not common. In-house kylin deployments are mostly not impacted.



This issue affects Apache Kylin: from 4.0.0 through 5.0.4.



Users are recommended to upgrade to version 5.0.5, which fixes the issue.

This issue is being tracked as KYLIN-6103 

Credit:

n0mi1k Security (finder)
kta1kri (finder)

References:

https://kylin.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-108766
https://issues.apache.org/jira/browse/KYLIN-6103

