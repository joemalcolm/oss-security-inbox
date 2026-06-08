X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/08/7
Message-ID: <058f9430-6bb3-5ab9-d182-c34d25a0d94b@apache.org>
Date: Mon, 08 Jun 2026 12:50:26 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-34356: Apache HTTP Server: ProxyPassReverseCookieMap buffer overflow 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache HTTP Server 2.4.0 through 2.4.67

Description:

Heap-based Buffer Overflow vulnerability in Apache HTTP Server with malicious backend servers and ProxyPassReverseCookie*

This issue affects Apache HTTP Server: from 2.4.0 through 2.4.67.

Users are recommended to upgrade to version 2.4.68, which fixes the issue.

Credit:

Arkadi Vainbrand (finder)
depthfirst (depthfirst.com) (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-34356

Timeline:

2026-02-23: reported
2026-06-05: fixed in 2.4.x by r1935008
2026-06-08: 2.4.68 released

