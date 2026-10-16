X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/16/22
Message-ID: <de3669d9-af8a-cb46-8e25-649cf75e3813@apache.org>
Date: Fri, 16 Oct 2026 03:30:52 +0000
From: Enxin Xie <linkinstar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-64943: Apache Answer: API keys logged in plaintext during authentication 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Answer through 2.0.2

Description:

Insertion of Sensitive Information into Log File vulnerability in Apache Answer.



This issue affects Apache Answer: through 2.0.2.

Full API keys are written to application logs on every authenticated request, allowing anyone with log-read access to recover and replay active bearer credentials.


Users are recommended to upgrade to version 2.0.3, which fixes the issue.

Credit:

meifukun (reporter)

References:

https://answer.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-64943

