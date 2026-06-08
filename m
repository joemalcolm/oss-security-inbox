X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/08/10
Message-ID: <0ef2c601-406b-2c68-16c7-5e558b7e0c8a@apache.org>
Date: Mon, 08 Jun 2026 12:50:42 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-43951: Apache HTTP Server: OOB Read in `merge_response_headers` can cause crash 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache HTTP Server 2.4.0 through 2.4.67

Description:

Out-of-bounds Read vulnerability in Apache HTTP Server with mod_headers and mod_mime and multiple response languages.

This issue affects Apache HTTP Server: from 2.4.0 through 2.4.67.

Credit:

Zhenpeng (Leo) Lin at depthfirst (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-43951

Timeline:

2026-04-27: reported
2026-06-05: fixed in 2.4.x by r1935006
2026-06-08: 2.4.68 released

