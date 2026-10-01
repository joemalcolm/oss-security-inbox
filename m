X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/01/29
Message-ID: <138f52ea-9320-7a14-ad67-bc7092e52e0a@apache.org>
Date: Thu, 01 Oct 2026 18:09:33 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-79768: Apache HTTP Server: mod_userdir information disclosure 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache HTTP Server 2.4.0 through 2.4.68

Description:

Path equivalence: '/./' (single dot directory) vulnerability in Apache HTTP Server's mod_userdir module when configured with absolute non-wildcard UserDir directive (the 2nd form in https://httpd.apache.org/docs/2.4/mod/mod_userdir.html#userdir)



This issue affects Apache HTTP Server: from 2.4.0 through 2.4.68.

Credit:

Vlatko Kosturjak, Marlink Cyber (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-79768

Timeline:

2026-08-14: reported
2026-10-01: fixed in 2.4.x by r1938680
2026-10-01: 2.4.69 released

