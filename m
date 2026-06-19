X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/19/11
Message-ID: <1a2071b8-f51e-40db-1849-403cd6841efe@apache.org>
Date: Fri, 19 Jun 2026 06:57:13 +0000
From: Abhishek Choudhary <shreemaanabhishek@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-48895: Apache APISIX: Cas-auth Host header influence on CAS service URL 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache APISIX 3.0.0 through 3.16.0

Description:

URL Redirection to Untrusted Site ('Open Redirect') vulnerability in Apache APISIX.

The attacker could manipulate some client headers to perform an open-redirect, to potentially expose the session token.

This issue affects Apache APISIX: from 3.0.0 through 3.16.0.

Users are recommended to upgrade to version 3.17.0, which fixes the issue.

Credit:

lokerxxx (reporter)

References:

https://apisix.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-48895

