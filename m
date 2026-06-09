X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/09/4
Message-ID: <e36bfd06-09d7-eb64-bfaf-5c285e501a27@apache.org>
Date: Tue, 09 Jun 2026 05:15:03 +0000
From: Enxin Xie <linkinstar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-34031: Apache Answer: The custom avatar was not properly validated 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Answer through 2.0.0

Description:

Unrestricted Upload of File with Dangerous Type vulnerability in Apache Answer.

This issue affects Apache Answer: through 2.0.0.

The server did not sufficiently validate user-supplied image URLs, allowing arbitrary external content to be embedded as profile images, which could expose users to unintended external requests and tracking by third-party servers.
Users are recommended to upgrade to version 2.0.1, which fixes the issue.

Credit:

Reimar Fritz (reporter)

References:

https://answer.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-34031

