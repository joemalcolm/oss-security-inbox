X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/08/3
Message-ID: <bc8ecf31-0fe1-eab2-b00f-d592de8ccd99@apache.org>
Date: Thu, 08 Oct 2026 01:45:58 +0000
From: Wenjun Ruan <wenjun@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-66087: Apache DolphinScheduler: Project Authorization Bypass in the Task instance stop/savepoint Endpoint 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache DolphinScheduler before 3.4.3

Description:

An authorization bypass vulnerability in Apache DolphinScheduler allows authenticated users to operate task instance in projects they are not authorized to access through the 





  *  /dolphinscheduler/projects/{projectCode}/task-instances/{taskInstanceId}/stop
  *  /dolphinscheduler/projects/{projectCode}/task-instances/{taskInstanceId}/savepoint








This issue affects Apache DolphinScheduler: before 3.4.3.



Users are recommended to upgrade to version 3.4.3, which fixes the issue.

Credit:

Meng Qingwei (finder)
h1ei1 (finder)
meifukun (finder)
yansong (finder)
Omar Mousa — Red Team & Security Researcher (finder)

References:

https://dolphinscheduler.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-66087

