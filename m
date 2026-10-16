X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/16/24
Message-ID: <8d26dc05-3bab-0753-16ab-fc0c183461df@apache.org>
Date: Fri, 16 Oct 2026 03:32:02 +0000
From: Enxin Xie <linkinstar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-64945: Apache Answer: Incorrect permission mapping allows users with only the unpin permission to hide/show questions 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Answer through 2.0.2

Description:

A vulnerability in Apache Answer.



This issue affects Apache Answer: through 2.0.2.

The question operation controller gates hide/show operations on the wrong permission check result (the unpin permission instead of the hide permission), so in custom role configurations that separate these permissions, a user granted only question.unpin can hide or restore questions without holding question.hide or question.show.


Users are recommended to upgrade to version 2.0.3, which fixes the issue.

Credit:

meifukun (reporter)

References:

https://answer.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-64945

