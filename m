X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/09/8
Message-ID: <656961d0-50cf-8693-fd88-7d7fdd76b53a@apache.org>
Date: Sun, 09 Aug 2026 04:30:17 +0000
From: Velmurugan Periasamy <vel@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-55814: Apache Ranger: Download APIs expose plugin data without authentication 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Ranger through 2.8.0

Description:

Missing Authentication in Apache Ranger Download APIs on versions <= 2.8.0.
Users are recommended to upgrade to version [FIXED_VERSION], which fixes this issue.

Credit:

Andrew Rukin (Arenadata) (finder)

References:

https://ranger.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-55814

