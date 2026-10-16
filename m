X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/16/12
Message-ID: <efc172de-5a14-cb9c-abd5-3cc9e21a7cc0@apache.org>
Date: Fri, 16 Oct 2026 03:00:12 +0000
From: Li Yang <liyang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-108743: Apache Kylin: spark job OS command injection 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Kylin 4.0.4 through 5.0.4

Description:

Improper Neutralization of Special Elements used in an OS Command ('OS Command Injection') vulnerability in Apache Kylin. Impact most to the kylin services that are directly exposed to public network, which is not common. In-house kylin deployments are mostly not impacted.



This issue affects Apache Kylin: from 4.0.4 through 5.0.4.



Users are recommended to upgrade to version 5.0.5, which fixes the issue.

This issue is being tracked as KYLIN-6106 

Credit:

n0mi1k Security (finder)

References:

https://kylin.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-108743
https://issues.apache.org/jira/browse/KYLIN-6106

