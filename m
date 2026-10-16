X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/16/27
Message-ID: <5c861e9f-b5ab-40e9-ecee-c79b346de347@apache.org>
Date: Fri, 16 Oct 2026 03:34:36 +0000
From: Enxin Xie <linkinstar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-71563: Apache Answer: MCP Answer Retrieval Exposes Content from Non-Public Questions 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Answer through 2.0.2

Description:

Missing Authorization vulnerability in Apache Answer.



This issue affects Apache Answer: through 2.0.2.

An authorization flaw in the MCP answer retrieval tool allows holders of a global API key to access answer content associated with hidden, deleted, or pending-review questions.


Users are recommended to upgrade to version 2.0.3, which fixes the issue.

Credit:

Han, JunGyu (reporter)
VK, AzeFox Foundations (reporter)

References:

https://answer.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-71563

