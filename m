X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/24/3
Message-ID: <078dfccd-3aa4-a145-4600-81e2881feb19@apache.org>
Date: Thu, 24 Sep 2026 08:55:47 +0000
From: Wenjun Ruan <wenjun@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-57590: Apache DolphinScheduler: Missing Authorization in Task Group APIs Allows Unauthorized Cross-Project Operations 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache DolphinScheduler before 3.4.3

Description:

A missing authorization vulnerability exists in the Task Group APIs of Apache DolphinScheduler. The affected APIs do not properly verify whether the authenticated user has permission to access the project associated with the target Task Group.



This issue affects Apache DolphinScheduler: before 3.4.3.



Users are recommended to upgrade to version 3.4.3, which fixes the issue.

Credit:

Meng Qingwei (finder)
Thành Nguyễn (finder)
Yeonoh Park (finder)
tonghuaroot (finder)
George Chen (finder)

References:

https://dolphinscheduler.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-57590

