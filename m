X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/01/20
Message-ID: <0ec2a8cb-b527-4565-703d-2307d8b90b90@apache.org>
Date: Thu, 01 Oct 2026 18:07:17 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-58415: Apache HTTP Server: mod_dav_fs property database read access 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache HTTP Server 2.4.0 through 2.4.68

Description:

Internal state files accessible to external parties in mod_dav_fs in Apache Software Foundation Apache HTTP Server before 2.4.69 on all platforms allows a remote client to read WebDAV dead properties of resources it cannot author via a GET request for the .DAV state directory



This issue affects Apache HTTP Server: from 2.4.0 through 2.4.68.

Credit:

이지웅 (kimchunbok) (finder)
sungbyeongchan (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-58415

Timeline:

2026-06-24: reported
2026-10-01: fixed in 2.4.x by r1938668
2026-10-01: 2.4.69 released

