X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/08/6
Message-ID: <72ac0123-ce2e-a98b-1680-06761893349b@apache.org>
Date: Mon, 08 Jun 2026 12:50:19 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-34355: Apache HTTP Server: mod_proxy_html buffer overflow 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache HTTP Server 2.4.0 through 2.4.67

Description:

A buffer overflow in mod_proxy_html in Apache HTTP Server 2.4.67 and earlier allows an attack by an untrusted backend.
Users are recommended to upgrade to version 2.4.68, which fixes this issue.

Credit:

Elhanan Haenel (finder)
Junhui Lee (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-34355

Timeline:

2026-03-21: Report received
2026-06-04: fixed in 2.4.x by r1934977
2026-06-08: 2.4.68 released

