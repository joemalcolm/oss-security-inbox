X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/08/6
Message-ID: <f88fdd6d-10a5-4d20-9a98-c72e46bd4231@apache.org>
Date: Thu, 08 Oct 2026 01:46:36 +0000
From: Wenjun Ruan <wenjun@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-71896: Apache DolphinScheduler: Missing Authorization Checks Allow Unauthorized Disclosure of User Account Information 
Content-Type: text/plain; charset=utf-8

Severity: critical 

Affected versions:

- Apache DolphinScheduler before 3.4.3

Description:

An authorization vulnerability in Apache DolphinScheduler allows authenticated users to retrieve other users' account information through the /dolphinscheduler/users/list-all endpoint without the required permissions.



The endpoint fails to enforce the necessary authorization checks before returning user account information. As a result, an authenticated user can access account information they are not authorized to view.



Successful exploitation may expose sensitive user information and facilitate account enumeration.



This issue affects Apache DolphinScheduler: before 3.4.3.



Users are recommended to upgrade to version 3.4.3, which fixes the issue.

Credit:

n0mi1k (finder)
lemi9090 (finder)

References:

https://dolphinscheduler.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-71896

