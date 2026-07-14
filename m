X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/14/5
Message-ID: <9fc248fc-3ad7-6556-8cd3-b964910f50ea@apache.org>
Date: Tue, 14 Jul 2026 03:29:39 +0000
From: Li Yang <liyang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-62392: Apache Kylin: OS Command Injection via Async Query API 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Kylin 4 through 5.0.3

Description:

Improper Neutralization of Special Elements used in an OS Command ('OS Command Injection') vulnerability in Apache Kylin. A backend API may bring job config parameters to OS command line.

This issue affects Apache Kylin: from 4 through 5.0.3.

Users are recommended to upgrade to version 5.0.4, which fixes the issue.

This issue is being tracked as KYLIN-6091 

Credit:

Suraj Kattimuttathu Suresh <sksuraj@...b.edu> (finder)

References:

https://kylin.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-62392
https://issues.apache.org/jira/browse/KYLIN-6091

