X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/08/2
Message-ID: <c5aa1446-d27a-5f69-b89c-2495ecbca73b@apache.org>
Date: Sat, 08 Aug 2026 14:02:17 +0000
From: Thiago Henrique De Paula Figueiredo <thiagohp@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-61899: Apache Tapestry: Possible classpath file download through URL manipulation 
Content-Type: text/plain; charset=utf-8

Severity: critical 

Affected versions:

- Apache Tapestry (org.apache.tapestry:tapestry-core) 5.5.0 before 5.9.1

Description:

Vulnerability in tapestry-core in Apache Tapestry 5.5.0+ on all platforms allows attackers to download clsspath assets via specially crafted URLs.
Users are recommended to upgrade to version 5.9.1, which fixes this issue.

Credit:

Ilyass El Hadi (finder)

References:

https://tapestry.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-61899

