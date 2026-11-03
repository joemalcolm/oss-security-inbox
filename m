X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/03/22
Message-ID: <0f093567-d2cd-1a10-ae90-4f85a8487a96@apache.org>
Date: Tue, 03 Nov 2026 20:34:37 +0000
From: Arrigo Marchiori <ardovm@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-59264: Apache OpenOffice: Uncontrolled search path element vulnerability in Windows installer 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache OpenOffice through 4.1.16

Description:

The Windows installers of Apache OpenOffice 4.1.16 and earlier allow an already manipulated system to run external code with elevated access.
Users are recommended to upgrade to version 4.1.17, which fixes this issue.

Credit:

Kazuma Matsumoto, from GMO Cybersecurity by IERAE, Inc. (reporter)

References:

https://openoffice.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-59264

