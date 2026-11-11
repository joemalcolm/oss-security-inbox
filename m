X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/11/11
Message-ID: <0d344025-001e-1d57-89f1-3b585c7b86e3@apache.org>
Date: Wed, 11 Nov 2026 12:20:18 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-106023: Apache HTTP Server: mod_md NULL pointer dereference leads to child process crash 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache HTTP Server 2.4.30 through 2.4.70

Description:

NULL pointer dereference vulnerability in Apache HTTP Server's mod_md during HTTP request processing.



This issue affects Apache HTTP Server: from 2.4.30 through 2.4.69.

Credit:

hexb1n, Yang Song, and JiaSheng He of 360 Vulnerability Research Institute, working with 360 TuLongFeng. (finder)
Lucian Nitescu (finder)
Bartlomiej Dmitruk at striga.ai (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-106023

Timeline:

2026-09-29: reported

