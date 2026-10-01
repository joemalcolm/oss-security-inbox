X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/01/11
Message-ID: <8e72c7ef-27f6-2de9-2bfd-d5b3227911ee@apache.org>
Date: Thu, 01 Oct 2026 18:03:08 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-42356: Apache HTTP Server: limited RCE for some internal redirects to non-CGI files in CGI directories 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache HTTP Server 2.4.60 through 2.4.68

Description:

Deployment of wrong handler vulnerability in Apache HTTP Server allows the target of some internal redirects from CGI programs to also be treated as CGI and executed. The target must already be in a directory enabled for CGI and have no other extension understood by mod_mime.



This issue affects Apache HTTP Server: from 2.4.60 through 2.4.68.

Credit:

Feliks Penconek (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-42356

Timeline:

2026-04-03: reported
2026-10-01: fixed in 2.4.x by r1938650
2026-10-01: 2.4.69 released

