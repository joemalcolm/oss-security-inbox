X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/04/23
Message-ID: <28e4ba57-3f18-15e7-d1da-27ccac8f3a26@apache.org>
Date: Tue, 04 Aug 2026 18:44:06 +0000
From: "Timothy A. Bish" <tabish@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-67552: Apache Qpid Proton Dotnet: Unbounded type nesting can lead to pre-authentication stackoverflow 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Qpid Proton Dotnet (org.apache.qpid) through 1.0.0

Description:

A pre-authentication attacker could leverage type nesting to cause a StackOverflowError potentially leading to denial of service.

This issue affects Apache Qpid Proton-Dotnet through 1.0.0.

Users are recommended to upgrade to version 1.1.0, which fixes the issue

References:

https://qpid.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-67552

