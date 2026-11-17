X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/17/29
Message-ID: <bb52796a-2ca6-25c6-fbf6-1f6d8724bf31@apache.org>
Date: Tue, 17 Nov 2026 20:55:42 +0000
From: Hubert Gruszecki <hgruszecki@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-110513: Apache Iggy: Deleted user's HTTP token authenticates as the account that reuses its user ID 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Iggy through 0.9.0

Description:

Insufficient Session Expiration vulnerability in the Apache Iggy server HTTP transport. A self-issued JSON Web Token (JWT) identified the user only by numeric user ID, and a new user takes the lowest free ID. After an administrator deleted a user, that user's unexpired token, or a token refreshed from it while the ID was free, authenticated as the next account created with that ID and had that account's permissions. Only deployments with HTTP enabled are affected.

This issue affects Apache Iggy: through 0.9.0.

Users are recommended to upgrade to version 0.10.0, which fixes the issue.

Credit:

hataehoon (finder)

References:

https://github.com/apache/iggy/pull/4550
https://iggy.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-110513

