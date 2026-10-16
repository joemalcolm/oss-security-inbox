X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/16/7
Message-ID: <d74a7e3e-db3a-d8c5-4c16-3fc3e246adbe@apache.org>
Date: Fri, 16 Oct 2026 02:39:59 +0000
From: Li Yang <liyang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-68573: Apache Kylin: Unauthenticated Metastore Cleanup 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Kylin 4.0.0 through 5.0.4

Description:

Improper Authentication vulnerability in Apache Kylin. Unauthenticated user may access to system cleanup actions. Impact most to the kylin services that are directly exposed to public network, which is not common. In-house kylin deployments are mostly not impacted. 



This issue affects Apache Kylin: from 4 through 5.0.4.



Users are recommended to upgrade to version 5.0.5, which fixes the issue.

This issue is being tracked as KYLIN-6093 

Credit:

Fabian Fleischer (finder)
MopMonk-AI (finder)
Wanxin Yin (finder)

References:

https://kylin.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-68573
https://issues.apache.org/jira/browse/KYLIN-6093

