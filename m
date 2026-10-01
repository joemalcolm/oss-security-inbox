X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/01/30
Message-ID: <0b2b77f0-f60a-36f2-d8ca-fde11d87d2d5@apache.org>
Date: Thu, 01 Oct 2026 18:09:41 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-93546: Apache HTTP Server: mod_dav_fs namespace overflow 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache HTTP Server through 2.4.68

Description:

Integer overflow in mod_dav_fs in Apache HTTP Server through 2.4.68 allows an authenticated WebDAV client with write access to crash worker processes and persistently corrupt a directory's property database via PROPPATCH requests declaring many XML namespaces.

Credit:

Zhen Kong (finder)
Calif.io in collaboration with Anthropic (finder)
AISLE in partnership with Red Hat (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-93546

Timeline:

2026-07-28: reported
2026-10-01: fixed in 2.4.x by r1938682
2026-10-01: 2.4.69 released

