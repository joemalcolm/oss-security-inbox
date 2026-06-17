X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/17/6
Message-ID: <33f23173-2fce-df45-1525-b50518b25bef@apache.org>
Date: Wed, 17 Jun 2026 01:36:15 +0000
From: Wenjun Ruan <wenjun@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-49050: Apache DolphinScheduler: General user can mint admin access tokens via /access-tokens 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache DolphinScheduler (org.apache.dolphinscheduler:dolphinscheduler-api) before 3.4.2

Description:

General user can mint admin access tokens via /access-tokens

This issue affects Apache DolphinScheduler: before 3.4.2.

Users are recommended to upgrade to version 3.4.2, which fixes the issue.

Credit:

George Chen(https://github.com/geo-chen) (finder)

References:

https://dolphinscheduler.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-49050

