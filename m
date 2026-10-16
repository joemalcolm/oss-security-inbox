X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/16/23
Message-ID: <cf6188d1-856e-f19b-a14f-515e981e4976@apache.org>
Date: Fri, 16 Oct 2026 03:31:31 +0000
From: Enxin Xie <linkinstar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-64944: Apache Answer: Stored XSS via unsanitized HTML in imported question content 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Answer through 2.0.2

Description:

Improper Neutralization of Input During Web Page Generation ('Cross-site Scripting') vulnerability in Apache Answer.



This issue affects Apache Answer: through 2.0.2.

The importer stores imported question bodies as raw HTML without passing them through the normal Markdown-to-HTML sanitization path, so attacker-controlled HTML embedded in an imported data source is persisted and rendered to all viewers (including privileged users) as stored XSS.


Users are recommended to upgrade to version 2.0.3, which fixes the issue.

Credit:

meifukun (reporter)

References:

https://answer.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-64944

