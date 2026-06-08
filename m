X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/08/14
Message-ID: <99be4a95-5ea9-167a-21c5-56ef7fe3ca20@apache.org>
Date: Mon, 08 Jun 2026 12:51:36 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-44631: Apache HTTP Server: Heap Underflow in `ap_regname` via Signed Char Overflow 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache HTTP Server 2.4.0 through 2.4.67

Description:

Buffer Underwrite vulnerability in Apache HTTP Server on crafted regular expressions in the configuration.

This issue affects Apache HTTP Server: from 2.4.0 through 2.4.67.

Users are recommended to upgrade to version 2.4.68, which fixes the issue.

Credit:

Zhenpeng (Leo) Lin at depthfirst (finder)
Bartlomiej Dmitruk (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-44631

Timeline:

2026-04-27: reported
2026-06-05: fixed in 2.4.x by r1935015
2026-06-08: 2.4.68 released

