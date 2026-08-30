X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/30/2
Message-ID: <5d2a12e2-5631-09ba-7a78-a815c0e203f3@apache.org>
Date: Sun, 30 Aug 2026 20:02:27 +0000
From: Lenny Primak <lprimak@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-58301: Apache Shiro: Server-side POST request may be steered to an alternate host 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache Shiro (org.apache.shiro:shiro-jakata-ee) 2.0.0-alpha-0 through 3.0.0

Description:

When Apache Shiro is used with the Jakarta EE integration module, a low-privileged user can craft an HTTP request that causes the server to initiate a connection to an attacker-controlled URL and transmit attacker-controlled data. This vulnerability affects Apache Shiro versions 2.x through 3.0.0 only in deployments that use the Jakarta EE integration module.

Mitigation: Upgrade to version 3.0.1 or later, which fixes the issue. +
Alternatively, you can set the `org.apache.shiro.form-resubmit-host` (String) and `org.apache.shiro.form-resubmit-port` (Integer) system properties to restrict the host and port that Shiro will connect to when resubmitting a form.

Credit:

liyi.zhou@...ney.edu.au (Liyi), https://lzhou1110.github.io/ (finder)
ziyue0530@...il.com (Ziyue), https://zyy0530.github.io/ (finder)
cshe0476@....sydney.edu.au (Strick), https://str1ckl4nd.github.io/ (finder)
chng0012@....sydney.edu.au (Maurice), http://maurice.busystar.org/ (finder)
cyu210608@...il.com (Chenchen), https://7thparkk.github.io/ (finder)
Lenny Primak <lenny@...wlogix.com> (remediation developer)
Andrea Cosentino (remediation reviewer)

References:

https://shiro.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-58301

