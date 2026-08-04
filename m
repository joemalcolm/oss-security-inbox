X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/04/27
Message-ID: <f3ec07bd-141c-83f9-dc54-499ec0bbf87a@apache.org>
Date: Tue, 04 Aug 2026 18:47:56 +0000
From: "Timothy A. Bish" <tabish@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-67588: Apache Qpid ProtonJ2: Unbounded symbol value caching can lead to pre-authentication resource exhaustion 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Qpid ProtonJ2 (org.apache.qpid:protonj2) through 1.1.0

Description:

A pre-authentication attacker could leverage unbounded symbol value caching to cause resource exhaustion leading to denial of service.

This issue affects Apache Qpid ProtonJ2: through 1.1.0.

Users are recommended to upgrade to version 1.2.0, which fixes the issue.

References:

https://qpid.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-67588

