X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/03/27
Message-ID: <1d8c8c1c-a9a1-7a85-d7d2-0b12c102cb38@apache.org>
Date: Tue, 03 Nov 2026 20:36:48 +0000
From: Arrigo Marchiori <ardovm@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-90627: Apache OpenOffice: Local file inclusion via SQL provider and flat file database references 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache OpenOffice through 4.1.16

Description:

The flat file database driver in Apache Openoffice versions through 4.1.16 allows a crafted document to read the contents of any local file without asking the user.
Users are recommended to upgrade to version 4.1.17, which fixes this issue.

Credit:

Edoardo Geraci and Thomas Rinsma of Codean Labs (finder)

References:

https://openoffice.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-90627

