X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/19/12
Message-ID: <a45dcac3-4fb9-5470-a412-f62e44be098c@apache.org>
Date: Fri, 19 Jun 2026 06:57:08 +0000
From: Abhishek Choudhary <shreemaanabhishek@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-49230: Apache APISIX: Authentication bypass in jwe-decrypt 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache APISIX 3.8.0 through 3.16.0

Description:

Improper Validation of Integrity Check Value vulnerability in Apache APISIX.

The jwe-decrypt plugin under default configuration is vulnerable to authentication bypass. 
This issue affects Apache APISIX: from 3.8.0 through 3.16.0.

Users are recommended to upgrade to version 3.17.0, which fixes the issue.

Credit:

lokerxxx (reporter)

References:

https://apisix.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-49230

