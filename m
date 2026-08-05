X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/05/9
Message-ID: <8f3e1f1b-b97f-887d-6a77-ff19a3c37427@apache.org>
Date: Wed, 05 Aug 2026 14:25:42 +0000
From: Enxin Xie <linkinstar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-48834: Apache Answer: Denial of service via crafted Accept-Language header parsing 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Answer through 2.0.1

Description:

Improper Handling of Length Parameter Inconsistency vulnerability in Apache Answer.

This issue affects Apache Answer: through 2.0.1.

Unauthenticated attackers can cause a denial of service via a specially crafted Accept-Language header that triggers excessive CPU consumption during parsing.
Users are recommended to upgrade to version 2.0.2, which fixes the issue.

Credit:

tonghuaroot (reporter)

References:

https://answer.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-48834

