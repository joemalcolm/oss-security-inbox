X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/16/19
Message-ID: <ca0be59c-e2a6-1649-36a6-57da714817de@apache.org>
Date: Fri, 16 Oct 2026 03:10:54 +0000
From: Li Yang <liyang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-108823: Apache Kylin: Potential unauthenticated job metadata replacement 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Kylin 4.0.0 through 5.0.4

Description:

Exposure of Sensitive Information to an Unauthorized Actor during job manipulation in Apache Kylin. The impact is minor unless job services are exposed to public network, which is uncommon.



This issue affects Apache Kylin: from 4.0.0 through 5.0.4.



Users are recommended to upgrade to version 5.0.5, which fixes the issue.

This issue is being tracked as KYLIN-6110 

Credit:

garymao (finder)
Wanxin Yin (finder)

References:

https://kylin.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-108823
https://issues.apache.org/jira/browse/KYLIN-6110

