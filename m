X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/04/22
Message-ID: <d6b91e8c-1354-4e04-a6db-813fcaeda9e0@apache.org>
Date: Tue, 04 Aug 2026 18:43:40 +0000
From: "Timothy A. Bish" <tabish@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-67551: Apache Qpid Proton Dotnet: Type size/count handling can lead to excessive allocation pre-authentication 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Qpid Proton Dotnet (org.apache.qpid) through 1.0.0

Description:

pre-authentication attacker could leverage type size/count handling to cause excessive allocation leading to potential denial of service.

This issue affects Apache Qpid Proton-Dotnet: through 1.0.0.

Users are recommended to upgrade to version 1.1.0, which fixes the issue.

References:

https://qpid.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-67551

