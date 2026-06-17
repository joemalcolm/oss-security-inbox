X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/17/3
Message-ID: <74dccaaf-afeb-30e3-e761-66bccaccb0da@apache.org>
Date: Wed, 17 Jun 2026 01:35:26 +0000
From: Wenjun Ruan <wenjun@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-32967: Apache DolphinScheduler: The `/v2` experimental interface lacks permission checks 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache DolphinScheduler (org.apache.dolphinscheduler:dolphinscheduler-api) before 3.4.2

Description:

Incorrect Authorization vulnerability of `/v2` experimental interface in Apache DolphinScheduler.

This issue affects Apache DolphinScheduler: before 3.4.2.

Users are recommended to upgrade to version 3.4.2, which fixes the issue.

Credit:

b0b0haha (603571786@...com) (finder)
j311yl0v3u (2439839508@...com) (finder)

References:

https://dolphinscheduler.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-32967

