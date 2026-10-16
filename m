X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/16/2
Message-ID: <09ba85b3-be00-057b-2e2a-484d82121efa@apache.org>
Date: Fri, 16 Oct 2026 02:27:53 +0000
From: Li Yang <liyang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-63619: Apache Kylin: Missing authorization and path-confinement on system meta dump 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Kylin 4..0.0 through 5.0.4

Description:

Missing Authorization vulnerability in Apache Kylin. A backend metadata dump API misses the enough authorization and the path-confinement. Impact most to the kylin services that are directly exposed to public network, which is not common. In-house kylin deployments are mostly not impacted.



This issue affects Apache Kylin: from 4 through 5.0.4.



Users are recommended to upgrade to version 5.0.5, which fixes the issue.

This issue is being tracked as KYLIN-6093 KYLIN-6102 

Credit:

"George Chen" <http://github.com/geo-chen> (finder)
n0mi1k Security (finder)
MopMonk-AI (finder)

References:

https://kylin.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-63619
https://issues.apache.org/jira/browse/KYLIN-6093
https://issues.apache.org/jira/browse/KYLIN-6102

