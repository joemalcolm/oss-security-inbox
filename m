X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/09/2
Message-ID: <87f30e0e-5096-d923-aa6f-625e916cf530@apache.org>
Date: Tue, 09 Jun 2026 05:14:10 +0000
From: Enxin Xie <linkinstar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-34905: Apache Answer: Unlisted Questions Accessible via Direct API Access 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Answer through 2.0.0

Description:

Exposure of Sensitive Information to an Unauthorized Actor vulnerability in Apache Answer.

This issue affects Apache Answer: through 2.0.0.

The unlisted question feature did not enforce access restrictions on direct API endpoints, allowing authenticated users to discover and access unlisted questions, their answers, comments, and revision history.
Users are recommended to upgrade to version 2.0.1, which fixes the issue.

Credit:

Hamed Kohi (reporter)

References:

https://answer.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-34905

