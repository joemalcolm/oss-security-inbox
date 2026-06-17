X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/17/4
Message-ID: <7d746631-8878-1b12-0629-1129bd865049@apache.org>
Date: Wed, 17 Jun 2026 01:35:45 +0000
From: Wenjun Ruan <wenjun@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-42357: Apache DolphinScheduler: Incorrect Authorization vulnerability allows users to access workflow instance information belonging to projects they do not have permission to access. 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache DolphinScheduler (org.apache.dolphinscheduler:dolphinscheduler-api) before 3.4.1

Description:

Incorrect Authorization vulnerability allows users to access workflow instance information belonging to projects they do not have permission to access.

This issue affects Apache DolphinScheduler versions prior to 3.4.2.


Users are recommended to upgrade to version 3.4.2, which fixes this issue.

Credit:

Yicheng Yu(https://github.com/FHMTT) (finder)

References:

https://dolphinscheduler.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-42357

