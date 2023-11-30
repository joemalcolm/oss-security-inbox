X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/11/30/4
Message-ID: <72789292-eb17-d220-4364-db1051ef6ad1@apache.org>
Date: Thu, 30 Nov 2023 03:02:05 +0000
From: Jiajie Zhong <zhongjiajie@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-49620: Apache DolphinScheduler: Authenticated users could delete UDFs in resouece center they were not authorized 
Content-Type: text/plain; charset=utf-8

Severity: moderate

Affected versions:

- Apache DolphinScheduler 2.0.0 before 3.1.0

Description:

Before DolphinScheduler version 3.1.0, the login user could delete UDF function in the resource center unauthorized(which almost used in sql task), with unauthorized access vulnerability(IDOR), but after version 3.1.0 we fixed this issue. We mark this cve as moderate level because it still requires user login to operate, please upgrade to version 3.1.0 to avoid this vulnerability

Credit:

Yuanheng Lab of zhongfu (finder)

References:

https://github.com/apache/dolphinscheduler/pull/10307
https://dolphinscheduler.apache.org
https://www.cve.org/CVERecord?id=CVE-2023-49620

