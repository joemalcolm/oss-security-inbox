X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/08/15
Message-ID: <4e805602-85cf-a283-ed08-c6fd9118c342@apache.org>
Date: Mon, 08 Jun 2026 12:51:46 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-48913: Apache HTTP Server: mod_http2 memory corruption when file handles exhausted 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache HTTP Server 2.4.55 through 2.4.67

Description:

Use After Free vulnerability in Apache HTTP Server module mod_http2 when file handles are already exhausted.

This issue affects Apache HTTP Server: from 2.4.55 through 2.4.67.

Credit:

Sam Lovejoy, IBM X-Force Offensive Research (XOR) (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-48913

Timeline:

2026-05-22: reported
2026-06-03: fixed in 2.4.x by r1934882
2026-06-08: 2.4.68 released

