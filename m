X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/05/10
Message-ID: <a8bc95a4-b80a-c8eb-dfae-b2820bec2499@apache.org>
Date: Wed, 05 Aug 2026 14:26:04 +0000
From: Enxin Xie <linkinstar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-48911: Apache Answer: Unauthenticated OAuth Email-Binding Account Takeover via Existing User Confirmation Flow 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Answer through 2.0.1

Description:

Insufficient Verification of Data Authenticity vulnerability in Apache Answer.

This issue affects Apache Answer: through 2.0.1.

A missing authorization check in the external-login email binding flow allows unauthenticated attackers to take over arbitrary user accounts by tricking victims into clicking a crafted confirmation link.
Users are recommended to upgrade to version 2.0.2, which fixes the issue.

Credit:

tonghuaroot (reporter)
yangxi (reporter)

References:

https://answer.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-48911

