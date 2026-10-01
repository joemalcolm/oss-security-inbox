X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/01/28
Message-ID: <25f8d92e-422a-9be4-c194-cff0b831477d@apache.org>
Date: Thu, 01 Oct 2026 18:10:04 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-73637: Apache HTTP Server: mod_auth_digest DoS attack 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache HTTP Server 2.4.0 through 2.4.68

Description:

Use after free in mod_auth_digest in Apache Software Foundation Apache HTTP Server before 2.4.69 on all platforms allows an unauthenticated remote client to cause authentication state corruption via concurrent Digest authentication requests when AuthDigestNcCheck is enabled or AuthDigestNonceLifetime is set to 0.

Users are recommended to upgrade to version 2.4.69, which fixes this issue.

Credit:

Zhen Kong (finder)
Darren Carreras (DarrenC) (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-73637

Timeline:

2026-07-18: Report received
2026-10-01: fixed in 2.4.x by r1937721
2026-10-01: 2.4.69 released

