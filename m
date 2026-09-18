X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/18/13
Message-ID: <286f2f94-67c5-590f-4ab4-a4927a81afe4@apache.org>
Date: Fri, 18 Sep 2026 15:30:57 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-91866: Apache Neethi: Crafted policies cause unbounded work during intersection leading to denial of service 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Neethi (org.apache.neethi:neethi) before 3.2.4

Description:

A specially crafted pair of WS-Policy documents can force Neethi's policy-intersection to do exponential amounts of work, pinning the CPU for a long time (denial of service).
Users are recommended to upgrade to version 3.2.4, which fixes this issue.

Credit:

This issue was found using Claude agents to study the security of open-source projects (finder)

References:

https://ws.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-91866

