X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/04/30
Message-ID: <3759be44-9ee8-55b3-304c-23554ff66201@apache.org>
Date: Tue, 04 Aug 2026 18:49:14 +0000
From: "Timothy A. Bish" <tabish@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-67591: Apache Qpid ProtonJ2: Incoming session flow control window can be exceeded 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Qpid ProtonJ2 (org.apache.qpid:protonj2) through 1.1.0

Description:

An authenticated attacker could exceed the session flow control incoming window potentially leading to denial of service.

This issue affects Apache Qpid ProtonJ2: through 1.1.0.

Users are recommended to upgrade to version 1.2.0, which fixes the issue.

References:

https://qpid.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-67591

