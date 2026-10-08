X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/08/2
Message-ID: <3a31af1b-9e42-f281-a49a-722e75ab2684@apache.org>
Date: Thu, 08 Oct 2026 01:45:45 +0000
From: Wenjun Ruan <wenjun@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-66084: Apache DolphinScheduler: Project Authorization Bypass in the Task Definition with-upstream Endpoint 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache DolphinScheduler before 3.4.3

Description:

An authorization bypass vulnerability in Apache DolphinScheduler allows authenticated users to modify task definitions in projects they are not authorized to access through the /dolphinscheduler/projects/{projectCode}/task-definition/{code}/with-upstream endpoint.



The endpoint fails to verify that the task definition identified by code belongs to the project specified by projectCode. An authenticated user can supply the code of a project they are authorized to access together with a task definition code from another project, bypassing project access restrictions and modifying the target task definition and its upstream dependencies.



This vulnerability can compromise workflow integrity and disrupt task execution in unauthorized projects.This issue affects Apache DolphinScheduler: before 3.4.3.



Users are recommended to upgrade to version 3.4.3, which fixes the issue.

Credit:

Han, JunGyu (finder)
Thành Nguyễn (finder)
Yeonoh Park @ CIS Lab, SeoulTech (finder)
h1ei1 (finder)
n0mi1k (finder)

References:

https://dolphinscheduler.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-66084

