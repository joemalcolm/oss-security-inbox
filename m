X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/05/12
Message-ID: <046a5913-3b60-54d2-993a-51adf0dad59b@apache.org>
Date: Wed, 05 Aug 2026 14:26:49 +0000
From: Enxin Xie <linkinstar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-50749: Apache Answer: Missing authorization in revision audit reject allows authenticated users to reject pending revisions 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Answer through 2.0.1

Description:

Improper Authorization vulnerability in Apache Answer.

This issue affects Apache Answer: through 2.0.1.

Any authenticated user can reject arbitrary pending edit-revisions without review permission due to a missing authorization check on the reject operation.
Users are recommended to upgrade to version 2.0.2, which fixes the issue.

Credit:

tonghuaroot (reporter)
Mattia Campanelli (reporter)
Cavan Loughran (reporter)
Xi Yang (reporter)

References:

https://answer.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-50749

