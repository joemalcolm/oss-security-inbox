X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/01/16
Message-ID: <09a887a3-5d46-67a0-86c2-7cf27674190c@apache.org>
Date: Thu, 01 Oct 2026 18:04:43 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-56153: Apache HTTP Server: mod_charset_lite: Heap overflow in finish_partial_char 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache HTTP Server 2.4.0 through 2.4.68

Description:

Out-of-bounds Write vulnerability in Apache HTTP Server's mod_charset_lite.



This issue affects Apache HTTP Server: from 2.4.0 through 2.4.68.

Credit:

Bartlomiej Dmitruk at striga.ai (finder)
Masumi Tanaka (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-56153

Timeline:

2026-06-09: reported
2026-10-01: fixed in 2.4.x by r1938658
2026-10-01: 2.4.69 released

