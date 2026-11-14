X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/14/4
Message-ID: <08eb4ed6-f13c-96fd-db9c-fe2b0d81314a@apache.org>
Date: Sat, 14 Nov 2026 04:40:32 +0000
From: Lenny Primak <lprimak@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-74763: Apache Shiro: Authorization annotations not always enforced, depending on where they are placed 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 4.0: 6.3 (medium) CVSS:4.0/AV:N/AC:L/AT:P/PR:N/UI:N/VC:L/VI:L/VA:N/SC:N/SI:N/SA:N/S:N/AU:N/V:D/RE:L/U:Amber

Affected versions:

- Apache Shiro (org.apache.shiro:shiro-guice) before 3.0.2
- Apache Shiro (org.apache.shiro:shiro-aspectj) before 3.0.2
- Apache Shiro (org.apache.shiro:shiro-cdi) 2.0.0-alpha-0 before 3.0.2
- Apache Shiro (org.apache.shiro:shiro-jakarta-ee) 2.0.0-alpha-0 before 3.0.2

Description:

Authorization annotations, such as @RequiresRoles and @RequiresPermissions, are not always enforced in some class or interface hierarchies.
Annotations declared on an interface were not enforced when using the shiro-guice, shiro-aspectj, shiro-cdi or shiro-jakarta-ee modules.
In addition, annotations declared on a class or a superclass were not always enforced when using shiro-guice or shiro-aspectj, allowing an unauthorized caller to invoke methods that should be protected.
This issue affects all Apache Shiro versions through 3.0.1, with impact depending on module and where annotations are declared.

Mitigation: Upgrade to version 3.0.2 or later, which fixes the issue. The annotation closest to the invoked method now takes precedence.
Alternatively, declare authorization annotations directly on each protected implementing method.

Credit:

n0mi1k (finder)
Joshua Rogers (finder)
Wentao He (finder)
Lenny Primak <lenny@...wlogix.com> (remediation developer)

References:

https://shiro.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-74763

