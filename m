X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/05/14
Message-ID: <69109fda-7689-2fc8-1b4b-71cd5f7f9929@apache.org>
Date: Wed, 05 Aug 2026 14:27:26 +0000
From: Enxin Xie <linkinstar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-60053: Apache Answer: Residual Administrative API Key Access After Role or Account Revocation 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Answer through 2.0.1

Description:

Insufficient Session Expiration vulnerability in Apache Answer.

This issue affects Apache Answer: through 2.0.1.

Administrative API keys remained usable after the owning administrator was demoted or the account was marked inactive, suspended, or deleted, allowing continued access until the keys were explicitly removed.
Users are recommended to upgrade to version 2.0.2, which fixes the issue.

Credit:

yangxi (reporter)

References:

https://answer.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-60053

