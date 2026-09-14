X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/14/2
Message-ID: <52b6f846-1817-9d12-5f00-4b6e598594d0@apache.org>
Date: Mon, 14 Sep 2026 09:18:17 +0000
From: Calvin Kirs <kirs@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-68570: Apache Doris: Authorization bypass leading to unauthorized data access 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Doris 2.0.0 through 2.1.*
- Apache Doris 3.0.0 through 3.0.*
- Apache Doris 4.0.0 before 4.0.8
- Apache Doris 4.1.0 before 4.1.4

Description:

Incorrect Authorization vulnerability in Apache Doris allows an authenticated user to bypass privilege checks and access data they are not authorized to read, resulting in unauthorized disclosure of information.



This issue affects Apache Doris: from 2.0.0 through 2.1.*, from 3.0.0 through 3.0.*, from 4.0.0 before 4.0.8, and from 4.1.0 before 4.1.4.



Users are recommended to upgrade to a fixed release (4.0.8 or 4.1.4), which fixes the issue.

Credit:

Calvin Kirs, Security Researcher at SelectDB (finder)

References:

https://doris.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-68570

