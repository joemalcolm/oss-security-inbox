X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/16/26
Message-ID: <4cbdd0f6-46b0-aa5b-d049-a46ec1690e52@apache.org>
Date: Fri, 16 Oct 2026 03:33:51 +0000
From: Enxin Xie <linkinstar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-68482: Apache Answer: Improper Authorization in Question Invite User Lookup 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Answer through 2.0.2

Description:

Missing Authorization vulnerability in Apache Answer.



This issue affects Apache Answer: through 2.0.2.

An unauthenticated or unauthorized user can retrieve the invited-user list associated with a non-public question due to missing visibility authorization checks.


Users are recommended to upgrade to version 2.0.3, which fixes the issue.

Credit:

Yash Shendge (reporter)

References:

https://answer.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-68482

