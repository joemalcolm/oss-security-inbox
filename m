X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/19/9
Message-ID: <3c0ac190-d8f2-a6e2-5b90-fe62d7e510f1@apache.org>
Date: Fri, 19 Jun 2026 06:55:57 +0000
From: Abhishek Choudhary <shreemaanabhishek@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-47339: Apache APISIX: authz-casdoor incorrect session sharing 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache APISIX 2.14.1 through 3.16.0

Description:

Incorrect Authorization vulnerability in Apache APISIX.

An attacker can capitalise on authz-casdoor plugin under default configuration to authenticate themselves with credentials from a different source.
This issue affects Apache APISIX: from 2.14.1 through 3.16.0.

Users are recommended to upgrade to version 3.17.0, which fixes the issue.

Credit:

leon (reporter)

References:

https://apisix.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-47339

