X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/18/12
Message-ID: <56c6388b-da6e-dda0-a947-f6ea442eb6f0@apache.org>
Date: Fri, 18 Sep 2026 15:30:31 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-91865: Apache Neethi: Crafted policy references cause exponential expansion during normalization leading to denial of service 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Neethi (org.apache.neethi:neethi) before 3.2.4

Description:

A small WS-Policy document using repeated policy references can force Neethi to re-expand the same references exponentially during normalization, consuming huge amounts of CPU and memory (denial of service).
Users are recommended to upgrade to version 3.2.4, which fixes this issue.

Credit:

This issue was found using Claude agents to study the security of open-source projects (finder)

References:

https://ws.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-91865

