X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/04/25
Message-ID: <103e52cb-f592-5e81-c816-84c8a9fd2b48@apache.org>
Date: Tue, 04 Aug 2026 18:45:07 +0000
From: "Timothy A. Bish" <tabish@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-67554: Apache Qpid Proton Dotnet: Unbounded disposition range handling can lead to denial of service 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Qpid Proton Dotnet (org.apache.qpid) through 1.0.0

Description:

An authenticated attacker can craft a disposition frame with large or illegal ranges causing excessive CPU usage due to naive range handling, leading to denial of service.

This issue affects Apache Qpid Proton-Dotnet: through 1.0.0.

Users are recommended to upgrade to version 1.1.0, which fixes the issue.

References:

https://qpid.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-67554

