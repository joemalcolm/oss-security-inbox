X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/01/26
Message-ID: <e8627b3e-ca7a-6984-d888-4d0ab014a383@apache.org>
Date: Thu, 01 Oct 2026 18:08:36 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-63718: Apache HTTP Server: mod_proxy_uwsgi Transfer-Encoding response smuggling 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache HTTP Server 2.4.30 through 2.4.68

Description:

Inconsistent Interpretation of HTTP Requests ('HTTP Request/Response Smuggling') response smuggling vulnerability in Apache HTTP Server via mod_proxy_uwsgi and a crafted uwsgi response with Transfer-Encoding.



This issue affects Apache HTTP Server: from 2.4.30 through 2.4.68.

Credit:

Qing Xu (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-63718

Timeline:

2026-07-14: reported
2026-10-01: fixed in 2.4.x by r1938691
2026-10-01: 2.4.69 released

