X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/05/13
Message-ID: <40e79614-12ce-f034-8af3-ac4b2c2db3b1@apache.org>
Date: Wed, 05 Aug 2026 14:27:08 +0000
From: Enxin Xie <linkinstar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-60023: Apache Answer: Unauthorized disclosure of deleted or pending answer content 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Answer through 2.0.1

Description:

Exposure of Sensitive Information to an Unauthorized Actor vulnerability in Apache Answer.

This issue affects Apache Answer: through 2.0.1.

Deleted or pending answers could be retrieved by unauthorized users through the single-answer read path when the parent question remained visible, exposing answer content that should not have been accessible.
Users are recommended to upgrade to version 2.0.2, which fixes the issue.

Credit:

yangxi (reporter)

References:

https://answer.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-60023

