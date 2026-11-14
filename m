X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/14/7
Message-ID: <9bea5b8a-3e17-af44-c561-412190282ee6@apache.org>
Date: Sat, 14 Nov 2026 05:24:39 +0000
From: Lenny Primak <lprimak@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-129348: Apache Shiro: PropertiesRealm reload does not remove deleted users or narrowed permissions 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 4.0: 2.3 (low) CVSS:4.0/AV:N/AC:L/AT:P/PR:L/UI:N/VC:L/VI:L/VA:N/SC:N/SI:N/SA:N/S:N/AU:N/V:D/RE:L/U:Green

Affected versions:

- Apache Shiro (org.apache.shiro:shiro-core) before 3.0.2

Description:

When PropertiesRealm reloads its properties file, removed users and narrowed permissions could remain in effect.
This issue affects all Apache Shiro versions through 3.0.1, only when PropertiesRealm`loads its properties from a file, which is reloaded periodically by default.

Mitigation: Upgrade to version 3.0.2 or later, which fixes the issue.
Alternatively, restart the application after removing users or narrowing permissions.

Credit:

Joshua Rogers (finder)
Lenny Primak <lenny@...wlogix.com> (remediation developer)

References:

https://shiro.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-129348

