X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/14/6
Message-ID: <8a6448ff-9e73-4a5c-27cf-8e5df3ab236a@apache.org>
Date: Tue, 14 Jul 2026 03:54:13 +0000
From: Li Yang <liyang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-62393: Apache Kylin: Improper authorization in job information retrieval 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Kylin 4 through 5.0.3

Description:

Improper Handling of Insufficient Permissions or Privileges vulnerability in Apache Kylin. Improper authorization in job information retrieval, where an attacker may get access to unauthorized jobs in other projects.

This issue affects Apache Kylin: from 4 through 5.0.3.

Users are recommended to upgrade to version 5.0.4, which fixes the issue.

This issue is being tracked as KYLIN-6090 

Credit:

Yicheng <yyc2569580673@...il.com> (finder)
Haoran Zhao (finder)
Lei Zhang (finder)

References:

https://kylin.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-62393
https://issues.apache.org/jira/browse/KYLIN-6090

