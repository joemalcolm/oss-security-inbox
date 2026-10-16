X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/16/21
Message-ID: <1865a6f9-c5bb-5893-0c96-8c2ba772d6a4@apache.org>
Date: Fri, 16 Oct 2026 03:12:18 +0000
From: Li Yang <liyang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-108837: Apache Kylin: Potential computed-column resource exhaustion 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Kylin 4.0.0 through 5.0.4

Description:

Allocation of resources without limits or throttling vulnerability in Apache Kylin. Given an attacker has got project admin permission, an cache API maybe used to cause computed-column resource exhaustion.



This issue affects Apache Kylin: from 4.0.0 through 5.0.4.



Users are recommended to upgrade to version 5.0.5, which fixes the issue.

This issue is being tracked as KYLIN-6112 

Credit:

HRsGIT (https://github.com/HRsGIT) (finder)

References:

https://kylin.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-108837
https://issues.apache.org/jira/browse/KYLIN-6112

