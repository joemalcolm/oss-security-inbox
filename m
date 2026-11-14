X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/14/2
Message-ID: <fada557e-58fc-380a-eb3f-4d3c15c44b7b@apache.org>
Date: Sat, 14 Nov 2026 00:03:39 +0000
From: Lenny Primak <lprimak@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-129320: Apache Shiro: Principal tags in Jakarta Pages and Jakarta Faces do not escape output, allowing cross-site scripting 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 4.0: 2.1 (low) CVSS:4.0/AV:N/AC:L/AT:P/PR:L/UI:P/VC:N/VI:N/VA:N/SC:L/SI:L/SA:N/S:N/AU:N/V:D/RE:L/U:Green

Affected versions:

- Apache Shiro (org.apache.shiro:shiro-web) before 3.0.2
- Apache Shiro (org.apache.shiro:shiro-jakarta-ee) 2.0.0-alpha-0 before 3.0.2

Description:

The shiro:principal tags in shiro-web (Jakarta Pages) and shiro-jakarta-ee (Jakarta Faces) did not escape their output, which could allow cross-site scripting when a principal value is not fully trusted.
This issue affects all Apache Shiro versions through 3.0.1, only when the principal tag is used.

Mitigation: Upgrade to version 3.0.2 or later, which escapes the output.
Alternatively, validate principal values on input.

Credit:

The ASF, found using Claude agents to study the security of open-source projects, validated and reported by Apache Shiro (finder)
Lenny Primak <lenny@...wlogix.com> (remediation developer)

References:

https://shiro.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-129320

