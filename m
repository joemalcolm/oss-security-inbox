X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/04/26
Message-ID: <04580e82-f491-7092-a72c-e2bbc4420ada@apache.org>
Date: Tue, 04 Aug 2026 18:45:33 +0000
From: "Timothy A. Bish" <tabish@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-67555: Apache Qpid Proton Dotnet: Unable to govern the maximum number of transfer frames per incoming delivery 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Qpid Proton Dotnet (org.apache.qpid) through 1.0.0

Description:

It was not possible to govern the maximum number of transfer frames per incoming delivery, enabling an authenticated attacker to cause excessive resource usage and potential denial of service

This issue affects Apache Qpid Proton-Dotnet: through 1.0.0.

Users are recommended to upgrade to version 1.1.0, which fixes the issue.

References:

https://qpid.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-67555

