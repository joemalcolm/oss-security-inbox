X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/16/20
Message-ID: <9003edfb-164c-de51-881c-5c85d82c534f@apache.org>
Date: Fri, 16 Oct 2026 03:11:38 +0000
From: Li Yang <liyang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-108833: Apache Kylin: default startup profile miss security settings 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Kylin 4.0.0 through 5.0.4

Description:

Default startup profile miss security settings in Apache Kylin. Any deployment has security setting profile turned on does not impact.



This issue affects Apache Kylin: from 4.0.0 through 5.0.4.



Users are recommended to upgrade to version 5.0.5, which fixes the issue.

This issue is being tracked as KYLIN-6113 

Credit:

Hari (Harikrishna KP) (finder)

References:

https://kylin.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-108833
https://issues.apache.org/jira/browse/KYLIN-6113

