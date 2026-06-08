X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/08/4
Message-ID: <0ff8ce17-d5c5-adba-8e9b-c0d93491ffbe@apache.org>
Date: Mon, 08 Jun 2026 12:50:06 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-29167: Apache HTTP Server: mod_ldap per-dir use-after-free 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache HTTP Server 2.4.0 through 2.4.67

Description:

Use After Free vulnerability in Apache HTTP Server with mod_ldap in per-directory configuration

This issue affects Apache HTTP Server: from 2.4.0 through 2.4.67.

Users are recommended to upgrade to version 2.4.68, which fixes the issue.

Credit:

Pavel Kohout, Aisle Research, Aisle.com (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-29167

Timeline:

2026-03-02: reported
2026-06-03: fixed in 2.4.x by r1934935
2026-06-08: 2.4.68 released

