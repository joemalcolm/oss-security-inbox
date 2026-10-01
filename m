X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/01/22
Message-ID: <9927dfae-c286-e215-c7ae-e613e1353f97@apache.org>
Date: Thu, 01 Oct 2026 18:07:40 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-59797: Apache HTTP Server: mod_ssl SSLRequire allows .htaccess ap_expr file-function 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache HTTP Server 2.4.0 through 2.4.68

Description:

Improper Privilege Management vulnerability in Apache HTTP Server's mod_ssl via SSLRequire and file-related expressions.



This issue affects Apache HTTP Server: from 2.4.0 through 2.4.68.

Credit:

kimchunbok (finder)
l1nx1n (finder)
Juthawong Naisanguansee (finder)
Charles Vosburgh (finder)
Mike Read (finder)
Ryoma Nishioka (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-59797

Timeline:

2026-06-28: reported
2026-10-01: fixed in 2.4.x by r1938672
2026-10-01: 2.4.69 released

