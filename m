X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/08/11
Message-ID: <c67b96c7-404b-7f60-9058-47ac7c02e549@apache.org>
Date: Mon, 08 Jun 2026 12:50:49 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-44119: Apache HTTP Server: escalation of privilege through expressions in .htaccess in multiple modules 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache HTTP Server 2.4.0 through 2.4.67

Description:

Improper Privilege Management vulnerability in Apache HTTP Server 2.4.67 and earlier allows local .htaccess authors to read files with the privileges of the httpd user.

This issue affects Apache HTTP Server: from through 2.4.67.

Users are recommended to upgrade to version 2.4.68, which fixes the issue.

Credit:

Lucian Nitescu (finder)
as3617 (@real_as3617) at ENKI Whitehat (finder)
Zhang San (finder)
Martin Petrák (finder)
joaovicdev (finder)
Rooting | Lucas Torres (finder)
R4mbb of KRsecurity (finder)
gggggggga@...omi ShadowBlade Security Lab (finder)
NikKrian of H3C Security Center(h3c.com) (finder)
lokerxx (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-44119

Timeline:

2026-05-05: reported
2026-06-05: fixed in 2.4.x by r1935017
2026-06-08: 2.4.68 released

