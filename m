X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/14/3
Message-ID: <3ba38d7a-e07b-c59d-7161-8a8d0afb3bd9@apache.org>
Date: Sat, 14 Nov 2026 03:45:06 +0000
From: Lenny Primak <lprimak@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-88019: Apache Shiro: Saved form replay may weaken cookie security and expose form data 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 4.0: 6.0 (medium) CVSS:4.0/AV:N/AC:L/AT:P/PR:N/UI:P/VC:H/VI:L/VA:N/SC:N/SI:N/SA:N/S:N/AU:N/R:U/V:D/RE:L/U:Amber

Affected versions:

- Apache Shiro (org.apache.shiro:shiro-jakarta-ee) 2.0.0-alpha-0 before 3.0.2

Description:

When Apache Shiro is used with the Jakarta EE integration module, the automatic form saving feature weakens the security of a form that is resubmitted after login.
Cookies set by the application during the resubmission could lose their security attributes, such as `Secure` and `SameSite`.
In addition, the resubmitted form data and cookies could be sent to an untrusted host.
This issue affects Apache Shiro from 2.0.0-alpha through 3.0.1, only when using `shiro-jakarta-ee` integration module with form saving enabled (the default).

Mitigation: Upgrade to version 3.0.2 or later, which no longer replays the form over the network, and avoids this class of issues entirely.
Alternatively, you can set the `org.apache.shiro.form-resubmit-host` (String) and `org.apache.shiro.form-resubmit-port` (Integer) system properties to restrict the host and port that Shiro will connect to when resubmitting a form.

Credit:

Joshua Rogers (finder)
Wentao He (finder)
Lenny Primak <lenny@...wlogix.com> (remediation developer)

References:

https://shiro.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-88019

