X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/29/24
Message-ID: <a00107ab-d617-b0a2-f04e-8a835ada445e@apache.org>
Date: Tue, 29 Sep 2026 11:27:51 +0000
From: Wenjun Ruan <wenjun@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-81569: Apache DolphinScheduler: Improper Authorization in Sub-Workflow Tasks Allows Unauthorized Workflow Execution 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache DolphinScheduler (org.apache.dolphinscheduler:dolphinscheduler-api) before 3.4.3

Description:

An improper authorization vulnerability exists in the handling of sub-workflow tasks. An authenticated user who does not have permission to access a target project can reference and invoke a workflow belonging to that project through a sub-workflow task.



The system does not properly verify whether the user has permission to execute the referenced workflow or access its project. As a result, the user can bypass project-level authorization controls and cause workflows in unauthorized projects to be executed.



Successful exploitation may allow unauthorized execution of workflow tasks and access to the resources or data available to the target workflow.



This issue affects Apache DolphinScheduler: before 3.4.3.



Users are recommended to upgrade to version 3.4.3, which fixes the issue.

This issue is being tracked as CWE-863 Incorrect Authorization 

Credit:

Meng Qingwei (finder)

References:

https://dolphinscheduler.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-81569
https://issues.apache.org/jira/browse/CWE-863 Incorrect Authorization

