X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/14/1
Message-ID: <57792ad7-e08c-d698-3180-b5d141f08bec@apache.org>
Date: Fri, 13 Nov 2026 23:28:57 +0000
From: Lenny Primak <lprimak@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-114737: Apache Shiro: Incorrect default for case-insensitive path matching in ShiroFilterFactoryBean allows auth bypass for static files 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 4.0: 2.3 (low) CVSS:4.0/AV:N/AC:L/AT:P/PR:L/UI:N/VC:L/VI:N/VA:N/SC:N/SI:N/SA:N/S:P/AU:Y/V:D/RE:L/U:Green

Affected versions:

- Apache Shiro (org.apache.shiro:shiro-spring) 3.0.1 before 3.0.2

Description:

The fix for  CVE-2026-23903 https://shiro.apache.org/security-reports.html#cve_2026_23903  was incomplete for manually-created ShiroFilterFactoryBean, which still matched paths case-sensitively by default.
This issue affects Apache Shiro version 3.0.1, only when ShiroFilterFactoryBean is created manually by the application and static files are served from a case-insensitive filesystem.
Applications that let Shiro Spring (Boot) Starter create the bean are not affected.

Mitigation: Upgrade to version 3.0.2 or later, which fixes the issue.
Alternatively, call setCaseInsensitive(true) on the ShiroFilterFactoryBean.

Credit:

Shinya Murakami (@4n86rakam1) (finder)
Lenny Primak <lenny@...wlogix.com> (remediation developer)

References:

https://shiro.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-114737

