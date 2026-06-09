X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/09/6
Message-ID: <97907fb9-3649-a637-1e93-258f2c185881@apache.org>
Date: Tue, 09 Jun 2026 05:16:09 +0000
From: Enxin Xie <linkinstar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-25699: Apache Answer: Authorization Bypass in Timeline API 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Answer through 2.0.0

Description:

Exposure of Private Personal Information to an Unauthorized Actor vulnerability in Apache Answer.

This issue affects Apache Answer: through 2.0.0.

Timeline-related APIs lacked proper authorization checks, allowing regular authenticated users to access deleted, private, or unapproved content and its revision history.
Users are recommended to upgrade to version 2.0.1, which fixes the issue.

Credit:

Sho Odagiri (reporter)

References:

https://answer.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-25699

