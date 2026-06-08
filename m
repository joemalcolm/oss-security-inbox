X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/08/5
Message-ID: <e235a2ec-4b88-c779-760c-e577b98cca37@apache.org>
Date: Mon, 08 Jun 2026 12:50:11 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-29170: Apache HTTP Server: mod_proxy_ftp XSS 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache HTTP Server through 2.4.67

Description:

A cross-site scripting vulnerability exists in mod_proxy_ftp's HTML directory list generation in Apache HTTP Server 2.4.67 and earlier when listing FTP directory contents either via forward or reverse proxy configuration.

Users are recommended to upgrade to version 2.4.68, which fixes this issue.

Credit:

Pavel Kohout, Aisle Research, Aisle.com (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-29170

Timeline:

2026-03-04: Report received
2026-06-04: fixed in 2.4.x by r1934982
2026-06-08: 2.4.68 released

