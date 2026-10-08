X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/08/1
Message-ID: <f575dcf7-c480-eeeb-5055-2ff3d0729dfc@apache.org>
Date: Thu, 08 Oct 2026 01:45:32 +0000
From: Wenjun Ruan <wenjun@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-66082: Apache DolphinScheduler: Cross-project authorization bypasses in DolphinScheduler API (schedule / workflow） 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache DolphinScheduler before 3.4.3

Description:

An authorization bypass vulnerability in Apache DolphinScheduler allows authenticated users to perform unauthorized operations on workflow schedules, workflow definitions, and task instances in other projects.



The affected endpoints check permissions against the supplied projectCode but fail to verify that the target resource belongs to that project. An authenticated user with the required permissions in one project can supply that project's code together with a resource identifier from another project, bypassing the target project's access restrictions.



The affected endpoints include:

  *  

POST /projects/{projectCode}/schedules/{id}/online and /offline: Activate or deactivate workflow schedules in another project.


  *  

POST /projects/{projectCode}/workflow-definition/{code}/release: Change the ONLINE/OFFLINE state of workflow definitions in another project.






Successful exploitation allows users to alter workflow availability and interfere with task execution in projects they are not authorized to access.



This issue affects Apache DolphinScheduler: before 3.4.3.



Users are recommended to upgrade to version 3.4.3, which fixes the issue.

Credit:

Aisle Research (finder)
Meng Qingwei (finder)
Yeonoh Park @ CIS Lab, SeoulTech (finder)
tonghuaroot (finder)
meifukun (finder)
Thành Nguyễn (finder)

References:

https://dolphinscheduler.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-66082

