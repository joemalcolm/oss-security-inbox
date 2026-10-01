X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/01/18
Message-ID: <2c7fb266-476c-81f6-b3ae-b8f410bb74da@apache.org>
Date: Thu, 01 Oct 2026 18:05:40 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-56449: Apache HTTP Server: mod_proxy_html: crash in dump_content 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache HTTP Server 2.4.0 through 2.4.68

Description:

Out-of-bounds Write vulnerability in Apache HTTP Server's mod_proxy_html with crafted HTTP response bodies.



This issue affects Apache HTTP Server: from 2.4.0 through 2.4.68.

Credit:

Lucian Nitescu (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-56449

Timeline:

2026-06-14: reported
2026-10-01: fixed in 2.4.x by r1938661
2026-10-01: 2.4.69 released

