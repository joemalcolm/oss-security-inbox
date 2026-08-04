X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/04/31
Message-ID: <970d116c-8396-203e-062c-271d60579573@apache.org>
Date: Tue, 04 Aug 2026 18:49:34 +0000
From: "Timothy A. Bish" <tabish@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-67592: Apache Qpid ProtonJ2: Unable to govern the maximum number of transfer frames per incoming delivery 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Qpid ProtonJ2 (org.apache.qpid:protonj2) through 1.1.0

Description:

It was not possible to govern the maximum number of transfer frames per incoming delivery, enabling an authenticated attacker to cause excessive resource usage and potential denial of service.

This issue affects Apache Qpid ProtonJ2: through 1.1.0.

Users are recommended to upgrade to version 1.2.0, which fixes the issue

References:

https://qpid.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-67592

