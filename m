X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/01/12
Message-ID: <000cd921-e594-a93d-189b-9912039493d6@apache.org>
Date: Thu, 01 Oct 2026 18:03:01 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-42528: Apache HTTP Server: mod_dav shared lock overflow 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache HTTP Server through 2.4.68

Description:

A memory calculation bug in mod_dav in Apache httpd 2.4.67 and earlier allows an attacker with permission to create WebDAV locks to crash server child processes.

Users are recommended to upgrade to version 2.4.69, which fixes this issue

Credit:

Zhenpeng (Leo) Lin at depthfirst (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-42528

Timeline:

2026-04-27: Report received
2026-10-01: fixed in 2.4.x by r1938652
2026-10-01: 2.4.69 released

