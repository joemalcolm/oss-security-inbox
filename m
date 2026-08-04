X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/04/21
Message-ID: <23e4f3b4-af8a-e862-8d79-de98b740b9f6@apache.org>
Date: Tue, 04 Aug 2026 18:41:59 +0000
From: "Timothy A. Bish" <tabish@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-67465: Apache Qpid Proton Dotnet: Unbounded symbol value caching can lead to pre-authentication resource exhaustion 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Qpid Proton Dotnet (Apache.Qpid.Proton) through 1.0.0

Description:

A pre-authentication attacker could leverage unbounded symbol value caching to cause resource exhaustion leading to denial of service.

This issue affects Apache Qpid Proton-Dotnet: through 1.0.0.

Users are recommended to upgrade to version 1.1.0, which fixes the issue.

References:

https://qpid.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-67465

