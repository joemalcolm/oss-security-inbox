X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/06/16
Message-ID: <a7c0a35d-bbd4-2459-902a-932e0c560dc5@apache.org>
Date: Fri, 06 Nov 2026 11:13:03 +0000
From: Benoit Tellier <btellier@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-76168: Apache James: ManageSieve file implementation cross-user path traversal 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache James before 3.9.1

Description:

In Apache James server prior version 3.9.1 relying on the SieveFileRepository incorect validation of file paths can result in path transversal, allowing to set arbitrary SIEVE scripts for other users.
This allows a logged in attacker  to set arbitrary SIEVE scripts for other users, resulting in denial of service or even traffic capture.
Users are recommended to upgrade to version 3.9.1 which fixes this issue.

Credit:

n0mi1k Security (finder)

References:

https://james.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-76168

