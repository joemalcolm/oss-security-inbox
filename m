X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/10/10
Message-ID: <6bdebb2b-107f-e56c-7c71-7ec0cbddcdf1@apache.org>
Date: Wed, 10 Jun 2026 14:49:55 +0000
From: Enxin Xie <linkinstar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-25700: Apache Answer: AdminToken not invalidated after admin deactivation 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Answer through 2.0.0

Description:

Improper Restriction of Security Token Assignment vulnerability in Apache Answer.

This issue affects Apache Answer: through 2.0.0.

Previously issued administrative tokens were not invalidated after an administrator account was suspended, deleted, or deactivated, allowing continued access to administrative APIs until the token expired.
Users are recommended to upgrade to version 2.0.1, which fixes the issue.

Credit:

Sho Odagiri (reporter)

References:

https://answer.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-25700

