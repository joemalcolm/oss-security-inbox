X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/18/11
Message-ID: <ce4c0088-2aa1-b6ea-e10a-b9254fb16884@apache.org>
Date: Fri, 18 Sep 2026 15:29:51 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-91864: Apache Neethi: Crafted WS-Policy documents bypass element/attribute limits causing memory exhaustion 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Neethi (org.apache.neethi:neethi) before 3.2.4

Description:

A specially crafted WS-Policy document can pack unlimited content inside a policy assertion, which Neethi copies into memory without counting it against its size limits, exhausting the heap (denial of service).
Users are recommended to upgrade to version 3.2.4, which fixes this issue.

Credit:

This issue was found using Claude agents to study the security of open-source projects (finder)

References:

https://ws.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-91864

