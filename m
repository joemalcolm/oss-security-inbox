X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/12/29/1
Message-ID: <c0001c7d-bee4-9512-e8c7-4c5e6a5cf61d@apache.org>
Date: Fri, 29 Dec 2023 02:54:22 +0000
From: Jiajie Zhong <zhongjiajie@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-49299: Apache DolphinScheduler: Arbitrary js execute as root for authenticated users 
Content-Type: text/plain; charset=utf-8

Severity: important

Affected versions:

- Apache DolphinScheduler through 3.1.9

Description:

Improper Input Validation vulnerability in Apache DolphinScheduler. An authenticated user can cause arbitrary, unsandboxed javascript to be executed on the server.This issue affects Apache DolphinScheduler: through 3.1.9.

Users are recommended to upgrade to version 3.1.9, which fixes the issue.

Credit:

Eluen Siebene (finder)

References:

https://github.com/apache/dolphinscheduler/pull/15228
https://dolphinscheduler.apache.org
https://www.cve.org/CVERecord?id=CVE-2023-49299

