X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/17/7
Message-ID: <4aeed10a-3871-8184-90aa-af2ace884fd9@apache.org>
Date: Wed, 17 Jun 2026 01:39:14 +0000
From: Wenjun Ruan <wenjun@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-41280: Apache DolphinScheduler: Incorrect Authorization vulnerability allows users with system login privileges to delete task definitions in unauthorized projects 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache DolphinScheduler (org.apache.dolphinscheduler:dolphinscheduler-api) before 3.4.2

Description:

Incorrect Authorization vulnerability allows users with system login privileges to delete task definitions in unauthorized projects

This issue affects Apache DolphinScheduler versions prior to 3.4.2. 

Users are recommended to upgrade to version 3.4.2, which fixes this issue.

Credit:

Yicheng Yu(https://github.com/FHMTT) (finder)

References:

https://dolphinscheduler.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-41280

