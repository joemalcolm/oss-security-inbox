X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/16/10
Message-ID: <05ff270d-5350-156b-ecb9-98d5668ca221@apache.org>
Date: Fri, 16 Oct 2026 02:45:32 +0000
From: Li Yang <liyang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-69080: Apache Kylin: Broken Access Control in QuerySQLBlacklistController 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Kylin 4..0.0 through 5.0.4

Description:

Exposure of SQL Black List to an Unauthorized Actor vulnerability in Apache Kylin.



This issue affects Apache Kylin: from 4 through 5.0.4.



Users are recommended to upgrade to version 5.0.5, which fixes the issue.

Credit:

Haoran Zhao, Yicheng Yu, and Lei Zhang  (System and Software Security Lab in Fudan University) (finder)
Yan Xu (finder)

References:

https://kylin.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-69080

