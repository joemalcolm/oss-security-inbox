X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/16/34
Message-ID: <49e6a30e-7da3-5db7-8242-af59ee4dc9d1@apache.org>
Date: Fri, 16 Oct 2026 03:39:03 +0000
From: Enxin Xie <linkinstar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-90910: Apache Answer: Reaction API authorization bypass for restricted content 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Answer through 2.0.2

Description:

Missing authentication for critical function vulnerability in Apache Answer.



This issue affects Apache Answer: through 2.0.2.



The reaction API did not enforce content visibility controls, allowing unauthorized users to read reaction metadata from restricted content or add and remove their own reactions.



Users are recommended to upgrade to version 2.0.3, which fixes the issue.

Credit:

Maksim Hayder (reporter)

References:

https://answer.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-90910

