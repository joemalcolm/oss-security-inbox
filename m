X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/01/25
Message-ID: <f7edd111-67d6-7351-8522-fd25eaebdc7c@apache.org>
Date: Thu, 01 Oct 2026 18:09:49 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-63686: Apache HTTP Server: mod_xml2enc crash on charset conversion failure 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache HTTP Server 2.4.0 through 2.4.68

Description:

A NULL pointer dereference in mod_xml2enc in Apache Software Foundation Apache HTTP Server before 2.4.69 on all platforms allows an untrusted backend server to cause a denial of service via a proxied response with a charset whose conversion partially succeeds then fails.

Users are recommended to upgrade to version 2.4.69, which fixes this issue.

Credit:

Lucian Nitescu (finder)
Zhen Kong (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-63686

Timeline:

2026-06-14: Report received
2026-10-01: fixed in 2.4.x by r1938678
2026-10-01: 2.4.69 released

