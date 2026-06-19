X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/19/6
Message-ID: <6d48f574-47fd-a001-1d1c-c0f07d29504a@apache.org>
Date: Fri, 19 Jun 2026 06:55:43 +0000
From: Abhishek Choudhary <shreemaanabhishek@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-44046: Apache APISIX: wolf-rbac plugin Identity Spoofing 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache APISIX 1.2.0 through 3.16.0

Description:

Use of Less Trusted Source vulnerability in Apache APISIX.

Attacker can take advantage of wolf-rbac plugin under default configuration to potentially pollute logs with spoofed identity information and exploit IP based access control rules.
This issue affects Apache APISIX: from 1.2.0 through 3.16.0.

Users are recommended to upgrade to version 3.16.1, which fixes the issue.

Credit:

Qi Deng (reporter)

References:

https://apisix.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-44046

