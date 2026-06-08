X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/08/12
Message-ID: <b53ce165-438a-e2d0-c523-fbb2fecd70fa@apache.org>
Date: Mon, 08 Jun 2026 12:51:02 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-44185: Apache HTTP Server: Stack Buffer Over-Read in mod_ssl OCSP `send_request` 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache HTTP Server 2.4.0 through 2.4.67

Description:

Buffer Over-read vulnerability in Apache HTTP Server via outbound OCSP requests to an attacker controlled OCSP server

This issue affects Apache HTTP Server: from 2.4.0 through 2.4.67.

Users are recommended to upgrade to version 2.4.68, which fixes the issue.

Credit:

Zhenpeng (Leo) Lin at depthfirst (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-44185

Timeline:

2026-04-27: reported
2026-06-03: fixed in 2.4.x by r1934919
2026-06-08: 2.4.68 released

