X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/01/19
Message-ID: <d3e30b48-25f2-7306-5be2-04b3d4d140ee@apache.org>
Date: Thu, 01 Oct 2026 18:07:12 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-57941: Apache HTTP Server: mod_http2 use-after-free / wild write via shared session->bbtmp re-entrancy 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache HTTP Server 2.4.0 through 2.4.68

Description:

Use After Free vulnerability in Apache HTTP Server's mod_http2 via shared session->bbtmp re-entrancy



This issue affects Apache HTTP Server: from 2.4.0 through 2.4.68.

Credit:

Lucian Nitescu (finder)
Simon Kappel (finder)
Gianluca Danesin, Altervista (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-57941

Timeline:

2026-06-15: reported
2026-10-01: fixed in 2.4.x by r1938665
2026-10-01: 2.4.69 released

