X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/08/13
Message-ID: <c4e0faa3-61c5-0eb7-3806-08689cb2db33@apache.org>
Date: Mon, 08 Jun 2026 12:51:13 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-44186: Apache HTTP Server: Loop in `proxy_ftp_handler` in mod_proxy_ftp 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache HTTP Server 2.4.0 through 2.4.67

Description:

Loop with Unreachable Exit Condition ('Infinite Loop') vulnerability in the mod_proxy_ftp module in Apache HTTP Server with an attacker controlled backend FTP server.

This issue affects undefined: from 2.4.0 through 2.4.67.

Users are recommended to upgrade to version 2.4.68, which fixes the issue.

Credit:

Zhenpeng (Leo) Lin at depthfirst (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-44186

Timeline:

2026-04-27: reported
2026-06-05: fixed in 2.4.x by r1935004
2026-06-08: 2.4.68 released

