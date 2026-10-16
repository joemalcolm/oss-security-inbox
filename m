X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/16/25
Message-ID: <fcf1041c-1999-4dc9-b451-0373fe986031@apache.org>
Date: Fri, 16 Oct 2026 03:33:17 +0000
From: Enxin Xie <linkinstar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-67249: Apache Answer: Email Code Purpose Confusion May Allow Account Takeover 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Answer through 2.0.2

Description:

A vulnerability in Apache Answer.



This issue affects Apache Answer: through 2.0.2.

A verification code issued for one email-based workflow could be accepted by another sensitive workflow because the code purpose was not properly enforced.


Users are recommended to upgrade to version 2.0.3, which fixes the issue.

Credit:

Arpit Jain (reporter)

References:

https://answer.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-67249

