X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/29/25
Message-ID: <5240eac2-1356-f5b7-e75f-8e70bfc7f151@apache.org>
Date: Tue, 29 Sep 2026 11:28:07 +0000
From: Wenjun Ruan <wenjun@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-82804: Apache DolphinScheduler: Command Injection in the Alert Script Plugin 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache DolphinScheduler before 3.4.3

Description:

The scriptPath parameter is incorporated into a /bin/sh -c command without sufficient neutralization of shell metacharacters, allowing shell command substitution and execution.

An authenticated user can exploit this behavior by creating a resource whose filename contains shell command substitution syntax, such as $(...), and subsequently supplying the resulting path to the Alert Script plugin's /test-send endpoint. When the alert script is executed, the shell interprets the injected command, resulting in arbitrary command execution with the privileges of the DolphinScheduler service process.



This issue affects Apache DolphinScheduler: before 3.4.3.



Users are recommended to upgrade to version 3.4.3, which fixes the issue.

Credit:

youyi.mr (finder)

References:

https://dolphinscheduler.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-82804

