X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/05/11
Message-ID: <82ccf235-9a7b-cd6c-e3be-3a2b25fb540b@apache.org>
Date: Wed, 05 Aug 2026 14:26:28 +0000
From: Enxin Xie <linkinstar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-48912: Apache Answer: Improper authorization in avatar update cleanup allows authenticated users to delete arbitrary uploaded files by URL 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Answer through 2.0.1

Description:

Improper Input Validation vulnerability in Apache Answer.

This issue affects Apache Answer: through 2.0.1.

 A missing ownership check in the avatar-cleanup logic allows any authenticated user to delete other users' uploaded files by supplying their file URLs.
Users are recommended to upgrade to version 2.0.2, which fixes the issue.

Credit:

tonghuaroot (reporter)

References:

https://answer.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-48912

