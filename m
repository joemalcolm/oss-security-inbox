X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/19/4
Message-ID: <14672abb-3e4d-9ce2-acba-291e2d228fe5@apache.org>
Date: Fri, 19 Jun 2026 06:55:01 +0000
From: Abhishek Choudhary <shreemaanabhishek@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-39998: Apache APISIX: Identity Injection via forward-auth Plugin Missing Header Cleanup 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache APISIX 2.12.0 through 3.16.0

Description:

Improper Input Validation vulnerability in Apache APISIX.

The attacker can take advantage of certain configuration in forward-auth plugin to spoof identity headers.
This issue affects Apache APISIX: from 2.12.0 through 3.16.0.

Users are recommended to upgrade to version 3.16.1, which fixes the issue.

Credit:

Fernando Mecozzi (reporter)

References:

https://apisix.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-39998

