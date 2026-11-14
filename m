X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/14/6
Message-ID: <9966fb72-ee3e-01a1-345c-f838a4105438@apache.org>
Date: Sat, 14 Nov 2026 05:12:35 +0000
From: Lenny Primak <lprimak@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-129347: Apache Shiro: Empty stored credential matches an empty submitted password 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 4.0: 2.3 (low) CVSS:4.0/AV:N/AC:L/AT:P/PR:L/UI:N/VC:L/VI:L/VA:N/SC:N/SI:N/SA:N/S:N/AU:N/V:D/RE:L/U:Green

Affected versions:

- Apache Shiro (org.apache.shiro:shiro-core) before 3.0.2

Description:

`DefaultPasswordService` and `SimpleCredentialsMatcher` could treat an empty stored credential as a match for an empty submitted password.
This issue affects all Apache Shiro versions through 3.0.1, only when accounts with an empty stored credential exist.

Mitigation: Upgrade to version 3.0.2 or later, which fixes the issue.
Alternatively, avoid storing empty credentials, and reject empty passwords in the application.

Credit:

The ASF, found using LLM security scan, validated and reported by Apache Shiro (finder)
Lenny Primak <lenny@...wlogix.com> (remediation developer)

References:

https://shiro.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-129347

