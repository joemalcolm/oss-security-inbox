X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/04/28
Message-ID: <1f8f3ae3-666c-078d-001a-4086524f597a@apache.org>
Date: Tue, 04 Aug 2026 18:48:22 +0000
From: "Timothy A. Bish" <tabish@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-67589: Apache Qpid ProtonJ2: Type size/count handling can lead to excessive allocation pre-authentication 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Qpid ProtonJ2 (org.apache.qpid:protonj2) through 1.1.0

Description:

A pre-authentication attacker could leverage type size/count handling to cause excessive allocation leading to potential denial of service.

This issue affects Apache Qpid ProtonJ2: through 1.1.0.

Users are recommended to upgrade to version 1.2.0, which fixes the issue.

Credit:

Apache Qpid security team (finder)
xxy010605@...il.com (reporter)

References:

https://qpid.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-67589

