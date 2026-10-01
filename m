X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/01/13
Message-ID: <a863d486-a89d-33b3-531b-db916dd377ce@apache.org>
Date: Thu, 01 Oct 2026 18:03:13 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-46729: Apache HTTP Server: mod_heartmonitor denial of service 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache HTTP Server 2.4.0 through 2.4.68

Description:

NULL Pointer Dereference vulnerability in Apache HTTP Servers mod_heartmonitor over unicast listener.



This issue affects Apache HTTP Server: from 2.4.0 through 2.4.68.

Credit:

Zhang San (finder)
Ankit Prateek (OffByQuant) (finder)
Zhen Kong (finder)
SeungHyun Cho of KISA (finder)
4ra1n, pyn3rd and unam4 (finder)
Ryoma Nishioka (finder)
Keita Sode (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-46729

Timeline:

2026-05-07: reported
2026-10-01: fixed in 2.4.x by r1938654
2026-10-01: 2.4.69 released

