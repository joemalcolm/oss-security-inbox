X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/04/24/1
Message-ID: <f7d25943-18cd-73b0-a174-2f612d1d8d4e@apache.org>
Date: Fri, 24 Apr 2026 02:19:19 +0000
From: Wenjun Ruan <wenjun@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-23902: Apache DolphinScheduler: Users are able to use tenants that are not defined on the platform during workflow execution. 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache DolphinScheduler (org.apache.dolphinscheduler:dolphinscheduler-api) before 3.4.1

Description:

Incorrect Authorization vulnerability in Apache DolphinScheduler allows authenticated users with system login permissions to use tenants that are not defined on the platform during workflow execution.

This issue affects Apache DolphinScheduler versions prior to 3.4.1. 

Users are recommended to upgrade to version 3.4.1, which fixes this issue.

Credit:

Jihang Yu (reporter)

References:

https://dolphinscheduler.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-23902

