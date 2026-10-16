X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/16/17
Message-ID: <8ef2a8a7-af94-03a5-8b2a-b7c0258dee52@apache.org>
Date: Fri, 16 Oct 2026 03:09:33 +0000
From: Li Yang <liyang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-108776: Apache Kylin: tables/names SparkSQL injection 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Kylin 4.0.0 through 5.0.4

Description:

Improper Neutralization of Special Elements used in an SQL Command ('SQL Injection') vulnerability in Apache Kylin. The impact is moderate if kylin service is in query only mode, which is the default and most common mode.



This issue affects Apache Kylin: from 4.0.0 through 5.0.4.



Users are recommended to upgrade to version 5.0.5, which fixes the issue.

This issue is being tracked as KYLIN-6109 

Credit:

MopMonk-AI (finder)

References:

https://kylin.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-108776
https://issues.apache.org/jira/browse/KYLIN-6109

