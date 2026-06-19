X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/19/5
Message-ID: <8e2b9fb4-1ae9-391a-ce95-3da0630df959@apache.org>
Date: Fri, 19 Jun 2026 06:55:36 +0000
From: Abhishek Choudhary <shreemaanabhishek@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-39999: Apache APISIX: JWT Algorithm Confusion allows authentication bypass 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache APISIX 2.2 through 3.16.0

Description:

Authentication Bypass by Spoofing vulnerability in Apache APISIX.

The attacker can completely bypass authentication capitalising on certain configurations of jwt-auth plugin.
This issue affects Apache APISIX: from v2.2 through v3.16.0.

Users are recommended to upgrade to version v3.16.1, which fixes the issue.

Credit:

Marco Capuano (reporter)

References:

https://apisix.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-39999

