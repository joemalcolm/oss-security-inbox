X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/08/4
Message-ID: <5688b77e-7660-76d4-ddd2-61fe5697b231@apache.org>
Date: Thu, 08 Oct 2026 01:46:12 +0000
From: Wenjun Ruan <wenjun@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-71183: Apache DolphinScheduler: Missing Authorization Checks Allow Disclosure of Data Source Information and Passwords 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache DolphinScheduler before 3.4.3

Description:

An authorization vulnerability in Apache DolphinScheduler allows authenticated users to obtain information about data sources they are not authorized to access through the /unauth-datasource and /authed-datasource endpoints.



These endpoints fail to enforce the required data source access controls and return sensitive connection information, including data source passwords. As a result, an authenticated user without permission to access a data source can retrieve its connection details and credentials.



Successful exploitation exposes sensitive data source information and may enable unauthorized access to the underlying databases using the disclosed credentials.



This issue affects Apache DolphinScheduler: before 3.4.3.



Users are recommended to upgrade to version 3.4.3, which fixes the issue.

Credit:

Raphael Zanarelli (finder)

References:

https://dolphinscheduler.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-71183

