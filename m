X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/01/21
Message-ID: <969267f1-46be-8b34-85cd-d1a638320905@apache.org>
Date: Thu, 01 Oct 2026 18:13:29 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-59685: Apache HTTP Server: Out-of-Bounds Write in ap_directory_walk() Canonical-Name Rewrite on CASE_BLIND_FILESYSTEM 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache HTTP Server 2.4.0 through 2.4.68

Description:

Out-of-bounds Write vulnerability in Apache HTTP Server on Windows while processing paths with 8.3 names that may grow when expanded.



This issue affects Apache HTTP Server: from 2.4.0 through 2.4.68.

Credit:

Dhiraj Mishra (finder)
Feng Ning (innora.ai / Innora Security Research) (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-59685

Timeline:

2026-05-06: reported
2026-10-01: fixed in 2.4.x by r1938670
2026-10-01: 2.4.69 released

