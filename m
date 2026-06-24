X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/24/8
Message-ID: <0cbb15d5-611c-4dac-98ca-6f6096524041@apache.org>
Date: Wed, 24 Jun 2026 18:26:51 +0000
From: Lenny Primak <lprimak@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-56130: Apache Shiro: Remember-me cookie isn't checked for expiry on the server 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache Shiro (org.apache.shiro:shiro-web) 1.2.4 through 2.99.99
- Apache Shiro (org.apache.shiro:shiro-web) 3.0.0-alpha-0 through 3.0.0-alpha-1

Description:

"Remember me" cookie age is not verified on the server. This potentially allows an attacker to intercept a valid cookie and reuse it indefinitely, even after the configured expiration time has passed.
This issue affects all Apache Shiro versions from 1.2.4 through 2.x, and 3.0.0-alpha-1, only when RememberMe functionality is enabled.


Upgrade to version 3.0.0 or later, which fixes the issue.

Credit:

Richard Bradley (finder)
Lenny Primak <lenny@...wlogix.com> (remediation developer)

References:

https://shiro.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-56130

