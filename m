X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/16/32
Message-ID: <a822daba-a576-cf3e-d54d-0dd9f8d10979@apache.org>
Date: Fri, 16 Oct 2026 03:37:51 +0000
From: Enxin Xie <linkinstar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-79633: Apache Answer: Missing Authorization Allows Mutations of Non-Public Content 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Answer through 2.0.2

Description:

vulnerability in Apache Answer.



This issue affects Apache Answer: through 2.0.2.



Missing authorization checks allowed authenticated users to perform actions on non-public content they were not permitted to access.



Users are recommended to upgrade to version 2.0.3, which fixes the issue.

Credit:

Luigi Colluto (reporter)

References:

https://answer.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-79633

