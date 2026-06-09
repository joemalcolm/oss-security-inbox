X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/09/3
Message-ID: <fb25a14c-da51-eae7-d577-ec9d1b5c675e@apache.org>
Date: Tue, 09 Jun 2026 05:14:38 +0000
From: Enxin Xie <linkinstar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-34033: Apache Answer: HTML Content Injection in Email 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Answer through 2.0.0

Description:

Improper Neutralization of Script-Related HTML Tags in a Web Page (Basic XSS) vulnerability in Apache Answer.

This issue affects Apache Answer: through 2.0.0.

User-supplied content was included in notification emails without proper escaping, allowing authenticated users to inject arbitrary HTML into emails sent to other users.
Users are recommended to upgrade to version 2.0.1, which fixes the issue.

Credit:

Reimar Fritz (reporter)

References:

https://answer.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-34033

