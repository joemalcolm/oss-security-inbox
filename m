X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/29/21
Message-ID: <7b19d137-9c6a-e99d-3767-215397c8a9a6@apache.org>
Date: Tue, 29 Sep 2026 11:27:01 +0000
From: Wenjun Ruan <wenjun@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-71898: Apache DolphinScheduler: Improper Authorization Allows Project Read-Only Users to Execute Workflows and Tamper with Workflow Definitions 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache DolphinScheduler before 3.4.3

Description:

An incorrect authorization check in Apache DolphinScheduler allows an authenticated user with only read permission for a project to modify a workflow instance in that project through the PUT /projects/{projectCode}/workflow-instances/{id} endpoint. The endpoint does not enforce the write permission required for this operation, allowing the user to make unauthorized changes to workflow instances.



This issue affects Apache DolphinScheduler: before 3.4.3.



Users are recommended to upgrade to version 3.4.3, which fixes the issue.

Credit:

Dipak Panchal (finder)

References:

https://dolphinscheduler.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-71898

