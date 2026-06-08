X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/08/8
Message-ID: <8e214008-ffe7-caeb-ceac-3a8481e61c4f@apache.org>
Date: Mon, 08 Jun 2026 12:50:31 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-42535: Apache HTTP Server: mod_dav_fs protected directory access 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache HTTP Server through 2.4.67

Description:

A path handling issue in mod_dav_fs in Apache 2.4.67 and earlier allows a WebDAV content author to directly manipulate trusted DAV property databases, potentially causing child process crashes.

Users are recommended to upgrade to version 2.4.68, which fixes this issue.

Credit:

Zhenpeng (Leo) Lin at depthfirst (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-42535

Timeline:

2026-04-27: Report received
2026-06-05: fixed in 2.4.x by r1935013
2026-06-08: 2.4.68 released

