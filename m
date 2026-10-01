X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/01/17
Message-ID: <2aff1d0f-243f-bb30-3765-35ecbf884c5c@apache.org>
Date: Thu, 01 Oct 2026 18:05:31 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-56154: Apache HTTP Server: mod_rewrite use-after-free via %{LA-U:HTTP:...} 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache HTTP Server 2.4.0 through 2.4.68

Description:

Use After Free vulnerability in Apache HTTP Server's mod_rewrite when using lookahead (%{LA-U:HTTP:...})



This issue affects Apache HTTP Server: from 2.4.0 through 2.4.68.

Credit:

Nebula Security (@nebusecurity) (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-56154

Timeline:

2026-05-25: reported
2026-10-01: fixed in 2.4.x by r1938660
2026-10-01: 2.4.69 released

