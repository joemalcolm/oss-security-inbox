X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/17/5
Message-ID: <677e355d-ea95-5368-6252-f13e30b74915@apache.org>
Date: Wed, 17 Jun 2026 01:36:01 +0000
From: Wenjun Ruan <wenjun@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-47340: Apache DolphinScheduler: An incorrect authorization vulnerability allows authenticated users to access alert instances associated with alert groups they do not have permission to access. 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache DolphinScheduler (org.apache.dolphinscheduler:dolphinscheduler-api) before 3.4.2

Description:

Allow authenticated users to access alert instances associated with alert groups they do not have permission to access. in Apache DolphinScheduler.

This issue affects Apache DolphinScheduler: before 3.4.2.

Users are recommended to upgrade to version 3.4.2, which fixes the issue.

Credit:

thesecguy45@...il.com (finder)
udolemi (S2W) (finder)

References:

https://dolphinscheduler.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-47340

