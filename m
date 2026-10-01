X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/01/15
Message-ID: <019f4004-87f3-b9df-ba25-c45ea70a746a@apache.org>
Date: Thu, 01 Oct 2026 18:04:23 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-48005: Apache HTTP Server: mod_auth_digest reauthentication attack 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache HTTP Server 2.4.0 through 2.4.68

Description:

Missing authentication checks in mod_auth_digest in Apache Software Foundation Apache HTTP Server before 2.4.69 on all platforms allows an unauthenticated remote client to cause a denial of service (forced re-authentication) via forged Authorization headers when Digest authentication is enabled with AuthDigestNcCheck .

Users are recommended to upgrade to version 2.4.69, which fixes this issue.

Credit:

lokerxx (finder)
Zhen Kong (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-48005

Timeline:

2026-05-14: Report received
2026-10-01: fixed in 2.4.x by r1937721
2026-10-01: 2.4.69 released

