X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/09/7
Message-ID: <80f64502-5d75-f453-a275-a1ad17a7fbc7@apache.org>
Date: Tue, 09 Jun 2026 05:16:37 +0000
From: Enxin Xie <linkinstar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-25688: Apache Answer: XSS in AI Answer Rendering 
Content-Type: text/plain; charset=utf-8

Severity: critical 

Affected versions:

- Apache Answer through 2.0.0

Description:

Improper Neutralization of Alternate XSS Syntax vulnerability in Apache Answer.

This issue affects Apache Answer: through 2.0.0.

AI-generated response content was rendered in the browser without proper sanitization, allowing malicious scripts to be executed when the content was viewed.
Users are recommended to upgrade to version 2.0.1, which fixes the issue.

Credit:

Sho Odagiri (reporter)

References:

https://answer.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-25688

