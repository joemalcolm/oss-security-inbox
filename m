X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/16/18
Message-ID: <fcfdf91f-8fd6-e653-b3da-55db27e2776b@apache.org>
Date: Fri, 16 Oct 2026 03:10:21 +0000
From: Li Yang <liyang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-108780: Apache Kylin: Potential JDBC source configuration validation issue 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Kylin 4.0.0 through 5.0.4

Description:

Potential JDBC source configuration validation vulnerability in Apache Kylin. The impact is minor, unless the kylin backend services are open to public network.



This issue affects Apache Kylin: from 4.0.0 through 5.0.4.



Users are recommended to upgrade to version 5.0.5, which fixes the issue.

This issue is being tracked as KYLIN-6111 

Credit:

An academic team studying incomplete security fixes (finder)

References:

https://kylin.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-108780
https://issues.apache.org/jira/browse/KYLIN-6111

