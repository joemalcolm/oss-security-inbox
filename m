X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/11/12
Message-ID: <2ae9ca9c-6e59-b44e-29ad-9e630daf555f@apache.org>
Date: Wed, 11 Nov 2026 12:19:56 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-109163: Apache HTTP Server: mod_vhost_alias 1 byte stack buffer overwrite (after CVE-2026-63292) 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache HTTP Server 2.4.69 through 2.4.70

Description:

Stack-based buffer overflow vulnerability in Apache HTTP Server's mod_vhost_alias (after CVE-2026-63292)



This issue affects Apache HTTP Server: 2.4.69.

Credit:

Gustavo Aiello (finder)
Charles Vosburgh (the-vibe-dev) (finder)
Wojciech Tatarski (CloudLinux / TuxCare) (finder)
Oz Kaiser (@tatikoma) (finder)
Daisuke Hatakeyama (SYZD Research) (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-109163

Timeline:

2026-10-05: reported

