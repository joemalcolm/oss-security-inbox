X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/29/20
Message-ID: <983f42aa-085c-00cd-099b-14aaae36ce0d@apache.org>
Date: Tue, 29 Sep 2026 11:26:45 +0000
From: Wenjun Ruan <wenjun@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-71897: Apache DolphinScheduler: Allows unauthorized workflow operations through batch-copy and batch-move endpoints 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache DolphinScheduler before 3.4.3

Description:

An improper authorization check in Apache DolphinScheduler allows an authenticated user to use the batch-copy and batch-move endpoints to operate on workflows in projects for which they lack the required permissions. This may allow the user to copy or move workflows from unauthorized projects.



This issue affects Apache DolphinScheduler: before 3.4.3.



Users are recommended to upgrade to version 3.4.3, which fixes the issue.

Credit:

n0mi1k (finder)
Yeonoh Park (finder)

References:

https://dolphinscheduler.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-71897

