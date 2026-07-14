X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/14/4
Message-ID: <33a16e33-2f26-a62a-9831-e20b2cd94c18@apache.org>
Date: Tue, 14 Jul 2026 03:03:43 +0000
From: Li Yang <liyang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-62390: Apache Kylin: SQL Injection Vulnerability in Catalog Cache Refresh API 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Kylin 4 through 5.0.3

Description:

Improper Neutralization of Special Elements used in an SQL Command ('SQL Injection') vulnerability in Apache Kylin. A backend API refreshing table catalog may cause the injection to the generated SQL.

This issue affects Apache Kylin: from 4 through 5.0.3.

Users are recommended to upgrade to version 5.0.4, which fixes the issue.

This issue is being tracked as KYLIN-6089 

Credit:

罗鑫 <lx2317103712@...il.com> (finder)

References:

https://kylin.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-62390
https://issues.apache.org/jira/browse/KYLIN-6089

