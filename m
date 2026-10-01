X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/01/23
Message-ID: <25da0af6-fc14-0944-c979-6d252a6c89e2@apache.org>
Date: Thu, 01 Oct 2026 18:07:46 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-63045: Apache HTTP Server: mod_proxy_ftp PASV address handling 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache HTTP Server 2.4.0 through 2.4.68

Description:

Improper validation of FTP PASV reply address in mod_proxy_ftp in Apache Software Foundation Apache HTTP Server through 2.4.68 on all platforms allows, in forward proxy configurations, an untrusted FTP server to cause the proxy to open a data connection to an arbitrary third-party host via a crafted PASV response.

Users are recommended to upgrade to version 2.4.69, which fixes this issue.

Credit:

Zhen Kong (finder)
4ra1n, pyn3rd and unam4 (finder)
Charles Vosburgh (finder)
sungbyeongchan (finder)
Daradigu / RELAUNCH DEPT. (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-63045

Timeline:

2026-07-07: Report received
2026-10-01: fixed in 2.4.x by r1938674
2026-10-01: 2.4.69 released

