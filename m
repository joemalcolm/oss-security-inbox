X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/01/24
Message-ID: <ef2c7be1-31ed-4fba-576d-8694f897413b@apache.org>
Date: Thu, 01 Oct 2026 18:08:30 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-63292: Apache HTTP Server: mod_vhost_alias stack overflow 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache HTTP Server 2.4.0 through 2.4.68

Description:

Stack-based buffer overflow in mod_vhost_alias in Apache Software Foundation Apache HTTP Server through 2.4.68 on all platforms allows a remote client to cause a denial of service or potentially execute arbitrary code via an HTTP request with a Host header exceeding 8192 bytes when VirtualDocumentRoot uses a hostname format specifier and LimitRequestFieldSize is raised above the default.

Users are recommended to upgrade to version 2.4.69, which fixes this issue.

Credit:

Hyojae Lee (finder)
Zhen Kong (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-63292

Timeline:

2026-06-17: Report received
2026-10-01: fixed in 2.4.x by r1938676
2026-10-01: 2.4.69 released

