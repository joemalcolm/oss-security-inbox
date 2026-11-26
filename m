X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/27/2
Message-ID: <bc39f2f3-893f-6e55-955a-c400d3faf335@apache.org>
Date: Thu, 26 Nov 2026 21:25:13 +0000
From: Lenny Primak <lprimak@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-137686: Apache Shiro: Authentication bypass in ActiveDirectoryRealm via empty username (incomplete fix for CVE-2014-0074) 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 4.0: 6.3 (medium) CVSS:4.0/AV:N/AC:L/AT:P/PR:N/UI:N/VC:L/VI:N/VA:N/SC:N/SI:N/SA:N

Affected versions:

- Apache Shiro (org.apache.shiro:shiro-core) before 3.0.2

Description:

The fix for  CVE-2014-0074 https://shiro.apache.org/security-reports.html#cve_2014_0074  was incomplete for ActiveDirectoryRealm, which still accepted an empty username and password as an anonymous LDAP bind. This allowed an unauthenticated user to log in with an empty principal.
This issue affects all Apache Shiro versions through 3.0.1, only when ActiveDirectoryRealm is used without principalSuffix and the directory server allows anonymous binds.

Mitigation: Upgrade to version 3.0.2 or later, which fixes the issue.
Alternatively, set principalSuffix on the realm, or disable anonymous binds on the directory server.

Credit:

Sungho Park (@gigio1023) (finder)
Lenny Primak <lenny@...wlogix.com> (remediation developer)

References:

https://shiro.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-137686

