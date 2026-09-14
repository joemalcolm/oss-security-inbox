X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/14/3
Message-ID: <6743b25c-2fc7-48f4-0b5f-4609cf715a57@apache.org>
Date: Mon, 14 Sep 2026 09:21:49 +0000
From: Calvin Kirs <kirs@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-72524: Apache Doris: Authorization bypass allowing a low-privilege user to read/write/drop arbitrary tables 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Doris 3.1.0 through 3.1.*
- Apache Doris 4.0.0 through 4.0.7
- Apache Doris 4.1.0 through 4.1.3

Description:

Incorrect Authorization vulnerability in Apache Doris allows an authenticated user to bypass privilege checks and access or modify data they are not authorized to.



This issue affects Apache Doris: from 3.1.0 through 3.1.*, from 4.0.0 through 4.0.7, and from 4.1.0 through 4.1.3.



Users are recommended to upgrade to a fixed release (4.0.8 or 4.1.4), which fixes the issue.

Credit:

Calvin Kirs, Security Researcher at SelectDB (finder)

References:

https://doris.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-72524

