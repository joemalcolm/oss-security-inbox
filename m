X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/03/30
Message-ID: <6695fa47-8885-73b3-68f2-90a1b8df70bb@apache.org>
Date: Tue, 03 Nov 2026 20:37:32 +0000
From: Arrigo Marchiori <ardovm@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-90631: Apache OpenOffice: Remote document loaded without prompt, possibiy leaking environment variables 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache OpenOffice through 4.1.16

Description:

Apache OpenOffice documents can contain links. A missing Authorization vulnerability in Apache OpenOffice allowed an attacker to craft a document that would cause external links 
to be loaded without prompt, possibly transferring the contents of environment variables in the process.



This issue affects Apache OpenOffice: through 4.1.16.



Users are recommended to upgrade to version 4.1.17, which fixes the issue.

Credit:

Edoardo Geraci and Thomas Rinsma of Codean Labs (finder)

References:

https://openoffice.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-90631

