X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/08/9
Message-ID: <4b2a29ca-70ce-b423-1b62-db6064bb21cd@apache.org>
Date: Mon, 08 Jun 2026 12:50:37 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-42536: Apache HTTP Server: mod_xml2enc heap overflow 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache HTTP Server 2.4.0 through 2.4.67

Description:

Heap-based Buffer Overflow vulnerability in Apache HTTP Server with mod_xml2enc, xml2StartParse, and untrusted content

This issue affects Apache HTTP Server: from 2.4.0 through 2.4.67.

Users are recommended to upgrade to version 2.4.68, which fixes the issue.

Credit:

Zhenpeng (Leo) Lin at depthfirst (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-42536

Timeline:

2026-04-27: reported
2026-06-04: fixed in 2.4.x by r1934971
2026-06-08: 2.4.68 released

