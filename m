X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/06/8
Message-ID: <e9d0c047-bcbc-09d8-b16e-d48e9cba4af5@apache.org>
Date: Thu, 06 Aug 2026 14:04:32 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-49506: Apache Portable Runtime Utility: apr_password_validate() vulnerable to timing attack 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Portable Runtime Utility (APR-util) 1.2.0 through 1.6.3

Description:

APR-util versions 1.6.3 (and earlier) function apr_password_validate() was not constant-time with regards to hashes or passwords comparisons, potentially leaking their content via a side channel timing attack particularly on platforms without crypt() such as  Windows, BeOS, NetWare, or Android.

Users are recommended to upgrade to version 1.6.4, which fixes this issue.

Credit:

Michael Rowley <michael csirt.global> (finder)

References:

https://apr.apache.org/
https://www.cve.org/CVERecord?id=CVE-2025-49506

Timeline:

2024-06-03: Reported to security team
2026-08-06: fixed in 1.6.x by r1936805

