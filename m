X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/16/31
Message-ID: <874c17fd-8ecc-955b-4dbd-9caa514eed69@apache.org>
Date: Fri, 16 Oct 2026 03:37:21 +0000
From: Enxin Xie <linkinstar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-79624: Apache Answer: Stale Visit Tokens Retain Access to Private Uploads After Session Revocation 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Answer through 2.0.2

Description:

Insufficient session expiration vulnerability in Apache Answer.



This issue affects Apache Answer: through 2.0.2.



Insufficient session invalidation allowed revoked users to continue accessing known private uploaded files with a stale visit token.



Users are recommended to upgrade to version 2.0.3, which fixes the issue.

Credit:

Maksim Hayder (reporter)

References:

https://answer.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-79624

