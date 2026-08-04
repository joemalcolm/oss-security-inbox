X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/04/24
Message-ID: <f5910e21-21a6-3457-b110-03fa947304d0@apache.org>
Date: Tue, 04 Aug 2026 18:44:35 +0000
From: "Timothy A. Bish" <tabish@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-67553: Apache Qpid Proton Dotnet: Incoming session flow control window can be exceeded 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Qpid Proton Dotnet (org.apache.qpid) through 1.0.0

Description:

An authenticated attacker could exceed the session flow control incoming window potentially leading to denial of service.

This issue affects Apache Qpid Proton-Dotnet: through 1.0.0.

Users are recommended to upgrade to version 1.1.0, which fixes the issue.

References:

https://qpid.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-67553

